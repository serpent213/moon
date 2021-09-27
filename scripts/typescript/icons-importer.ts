import * as fs from 'fs';

console.log('Running assets importer');

const rawDirIcons = '../../assets/static/svgs/icons_new';
const exportDir = '../../lib/moon';

const getFilesList = () => fs.readdirSync(`${rawDirIcons}`);

const toCamel = (s: string) => {
  return s.replace(/([-_][a-z])/gi, ($1) => {
    return $1
      .toUpperCase()
      .replace(/([-_])/gi, '')
      .replace(/([-_])/gi, '');
  });
};

const capitalizeFirstLetter = (string: string) => {
  return string.charAt(0).toUpperCase() + string.slice(1);
};

const getModuleName = (s: string) =>
  capitalizeFirstLetter(toCamel(s))
    .replace('IconLoyalty-0', 'IconLoyalty0')
    .replace('.svg', '');

const propsMap = `
  prop color, :string, values: Moon.colors
  prop background_color, :string, values: Moon.colors
  prop font_size, :string
  prop click, :event
  prop class, :string
`;

const propsMapKeys = [
  'color',
  'background_color',
  'font_size',
  'click',
  'class',
];

type WriteAssetsMapFileProps = {
  files: string[];
};

const writeAssetsMapFile = ({
  files,
}: WriteAssetsMapFileProps) => {
  const newFilePath = `${exportDir}/icon.ex`;

  fs.writeFileSync(
    newFilePath,
    `
defmodule Moon.Icon do
  use Moon.StatelessComponent
  alias Moon.Icons

  prop name, :string
  ${propsMap}
  @assets_map %{
    ${files
        .map(
          (i) =>
            `${i
              .replace(/([-_])/gi, '_')
              .toLowerCase()
              .replace('.svg', '')
            }: Icons.${getModuleName(i)}`
        )
        .join(', ')}
    }
  def icon_name_to_module(icon_name) do
    @assets_map[:"#{icon_name}"]
  end
  def render(assigns) do
    ~F"""
    {@name && icon_name_to_module(@name) && live_component(@socket, icon_name_to_module(@name), ${propsMapKeys
        .map((x: string) => `${x}: @${x}`)
        .join(', ')})}
    """
  end
end
`.replace('IconLoyalty-0', 'IconLoyalty0')
  );
};

type CreateAssetsComponentFileProps = {
  file: string;
};

const createAssetComponentFile = ({
  file,
}: CreateAssetsComponentFileProps) => {
  const newFilePath = `${exportDir}/icons/${file
    .replace(/([-_])/gi, '_')
    .toLowerCase()}.ex`;

  const svgMap = `
  <svg class={"moon-icon #{@class} #{@click && "cursor-pointer"}"} :on-click={@click} style={get_style(color: @color, background_color: @background_color, font_size: @font_size)}>
    <use href="/moon/assets/svgs/icons_new/${file}.svg#item"></use>
  </svg>
  `;

  fs.writeFileSync(
    newFilePath,
    `
defmodule Moon.Icons.${getModuleName(file)} do
  use Moon.StatelessComponent
  ${propsMap}
  def render(assigns) do
    ~F"""
    ${svgMap}
    """
  end
end
`.replace('IconLoyalty-0', 'IconLoyalty0')
  );
};

const singularMap = { currencies: 'currency' };

const singularName = (pluralName: string) =>
  (singularMap as any)[pluralName] ||
  pluralName.substring(0, pluralName.length - 1);

const files = getFilesList();

writeAssetsMapFile({
  files,
});

files.map((file: string) => {
  createAssetComponentFile({
    file: file.replace('.svg', ''),
  });
});

const assetsDocDir = '../../lib/moon_web/pages/';

const writeAssetsDocumentationPage = (pageContent: string) => {
  if (!pageContent) {
    return console.error('no content');
  }
  fs.writeFileSync(assetsDocDir + 'icons_page.ex', pageContent);
};

const generateAssetsDocumentationPageContent = (
  modules: string[]
): string => {
  return `
defmodule MoonWeb.Pages.IconsPage do
  use MoonWeb, :live_view

  alias Moon.Autolayouts.TopToDown
  alias Moon.Components.Heading
  alias Moon.Components.CodePreview
  alias Moon.Icons
  alias MoonWeb.Components.Page
  alias MoonWeb.Components.ExampleAndCode

  data breadcrumbs, :any,
    default: [
      %{
        to: "#",
        name: "Assets"
      },
      %{
        to: "/icons",
        name: "Icons"
      }
    ]
${modules.map((x: string) => `  alias Icons.${x}`).join('\n')}

  def mount(params, _session, socket) do
    {:ok, assign(socket, theme_name: params["theme_name"] || "sportsbet-dark", active_page: __MODULE__)}
  end

  def handle_params(_params, uri, socket) do
    {:noreply, assign(socket, uri: uri)}
  end

  def render(assigns) do
    ~F"""
    <Page theme_name={@theme_name} active_page={@active_page} breadcrumbs={@breadcrumbs}>
      <TopToDown>
      <Heading size={56} class="mb-4">Icons</Heading>
      ${modules
      .map(
        (x: string, i: number) => `
        <ExampleAndCode id="icon_${i + 1}" class="mt-4">
          <#template slot="example">
            <${x} font_size="5rem" />
          </#template>

          <#template slot="code">
            <#CodePreview>
              <${x} font_size="5rem" />
            </#CodePreview>
          </#template>
        </ExampleAndCode>
      `
      )
      .join('\n')}
      </TopToDown>
    </Page>
    """
  end
end
    `;
};

const generateAssetsDocumentationPage = (files: string[]) => {
  const modules = files.map((f: string) => getModuleName(f));
  const pageContent = generateAssetsDocumentationPageContent(modules);
  writeAssetsDocumentationPage(pageContent);
};

(() => {
  const files = getFilesList();
  generateAssetsDocumentationPage(files);
})();
