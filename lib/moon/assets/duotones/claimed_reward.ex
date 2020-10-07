defmodule Moon.Assets.Duotones.ClaimedReward do
  use Moon.StatelessComponent

  property color, :string
  property background_color, :string

  def render(assigns) do
    class_name =
      get_class_name("Duotones-ClaimedReward-#{assigns[:color]}-#{assigns[:background_color]}")

    ~H"""
    <style>
      .{{ class_name }} {
        vertical-align: middle;
        color: {{ @color }};
        background-color: {{ @background_color }};
      }
    </style>

    <svg class={{ class_name }} width="1em" height="1em" viewBox="0 0 174 174" fill="none" xmlns="http://www.w3.org/2000/svg"> <path opacity="0.1" d="M77.2559 125.831C100.816 125.831 119.915 106.732 119.915 83.172C119.915 59.6121 100.816 40.513 77.2559 40.513C53.696 40.513 34.5969 59.6121 34.5969 83.172C34.5969 106.732 53.696 125.831 77.2559 125.831Z" fill="currentColor"/> <path d="M65.2709 106.004L65.2709 106.004L65.2688 106.01L58.6003 125.899C58.6 125.9 58.5998 125.901 58.5995 125.902C58.2779 126.834 58.4998 127.794 59.0902 128.524L59.4788 128.209L59.0902 128.524C59.7058 129.284 60.6725 129.598 61.5849 129.457L61.588 129.457L70.085 128.094L70.0864 128.093C71.341 127.889 72.6278 128.323 73.5321 129.252C73.5325 129.253 73.5329 129.253 73.5333 129.254L79.4757 135.457L79.4757 135.457L79.4833 135.465C80.1425 136.124 81.0667 136.452 82.0333 136.237L82.0333 136.237L82.0372 136.236C82.9603 136.023 83.7019 135.35 84.0193 134.468L84.0194 134.468L84.0228 134.458L92.6917 108.654C92.6921 108.653 92.6924 108.652 92.6927 108.651C92.8118 108.315 93.1463 108.16 93.4466 108.265C93.7846 108.383 93.9413 108.719 93.8359 109.02L93.8358 109.02L93.8338 109.026L85.1628 134.836L85.1625 134.837C84.7264 136.145 83.6494 137.098 82.3054 137.408C81.9685 137.486 81.6875 137.511 81.4028 137.511C80.3547 137.511 79.3522 137.077 78.6019 136.301C78.6017 136.301 78.6015 136.301 78.6013 136.3L72.6603 130.099C72.6599 130.098 72.6594 130.098 72.659 130.097C72.0557 129.459 71.1376 129.138 70.2733 129.282C70.2727 129.282 70.2722 129.282 70.2716 129.282L61.7822 130.644C61.7815 130.644 61.7808 130.644 61.78 130.644C60.408 130.85 59.0497 130.357 58.1817 129.311C57.3034 128.252 57.0222 126.837 57.459 125.526C57.4591 125.525 57.4591 125.525 57.4592 125.525L64.1277 105.635C64.2468 105.299 64.5813 105.144 64.8816 105.249C65.2196 105.367 65.3763 105.703 65.2709 106.004Z" fill="#62676D" stroke="#62676D"/> <path d="M97.8326 137.413L97.8231 137.41L97.8135 137.408C96.4697 137.098 95.3929 136.146 94.9566 134.838C94.9565 134.837 94.9565 134.837 94.9564 134.837L89.5048 118.337L89.5049 118.337L89.502 118.329C89.3966 118.028 89.5532 117.692 89.8912 117.574C90.1912 117.469 90.5252 117.624 90.6447 117.959L96.066 134.455L96.0658 134.455L96.0706 134.468C96.3855 135.343 97.0941 136.022 98.0546 136.237C98.9816 136.45 99.9435 136.162 100.615 135.456C100.615 135.456 100.615 135.456 100.616 135.455L106.559 129.251L106.559 129.251L106.564 129.246C106.782 129.012 107.181 129 107.41 129.23C107.668 129.487 107.662 129.866 107.439 130.088L107.439 130.088L107.432 130.096L101.489 136.3C101.488 136.301 101.488 136.301 101.488 136.301C100.738 137.077 99.7352 137.511 98.687 137.511C98.3942 137.511 98.0941 137.484 97.8326 137.413Z" fill="#62676D" stroke="#62676D"/> <path d="M122.467 83.259C123.018 81.519 124.294 79.953 125.512 78.416C127.078 76.473 128.528 74.646 128.528 72.703C128.528 70.76 127.049 68.933 125.512 66.99C124.294 65.453 123.018 63.887 122.467 62.147C121.887 60.32 121.974 58.261 122.061 56.26C122.177 53.824 122.264 51.533 121.191 50.054C120.089 48.546 117.856 47.937 115.507 47.27C113.593 46.748 111.592 46.197 110.055 45.066C108.547 43.964 107.416 42.253 106.343 40.6C104.98 38.541 103.704 36.598 101.906 36.018C100.195 35.467 98.0779 36.25 95.8159 37.091C93.9019 37.787 91.9299 38.541 89.9869 38.541C88.0439 38.541 86.0429 37.816 84.1579 37.091C82.4179 36.453 80.7649 35.815 79.3149 35.815C78.8799 35.815 78.4739 35.873 78.0679 35.989C76.2699 36.569 74.9939 38.512 73.6309 40.571C72.5289 42.224 71.4269 43.935 69.9189 45.037C68.3819 46.139 66.4099 46.69 64.4669 47.241C62.1179 47.908 59.8849 48.517 58.7829 50.025C57.7099 51.504 57.7969 53.795 57.9129 56.231C57.9999 58.232 58.0869 60.32 57.5069 62.118C56.9559 63.858 55.6799 65.424 54.4619 66.961C52.8959 68.904 51.4459 70.731 51.4459 72.674C51.4459 74.617 52.9249 76.444 54.4619 78.387C55.6799 79.924 56.9559 81.49 57.5069 83.23C58.0869 85.057 57.9999 87.116 57.9129 89.117C57.7969 91.553 57.7099 93.844 58.7829 95.323C59.8849 96.831 62.1179 97.44 64.4669 98.107C66.3809 98.629 68.3819 99.18 69.9189 100.311C71.4269 101.413 72.5579 103.124 73.6309 104.777C74.9939 106.836 76.2699 108.779 78.0679 109.359C79.7499 109.91 81.8959 109.127 84.1579 108.286C86.0719 107.59 88.0439 106.836 89.9869 106.836C91.9299 106.836 93.9309 107.561 95.8159 108.286L95.0619 110.345C93.3219 109.707 91.5529 109.04 89.9869 109.04C88.4209 109.04 86.6519 109.707 84.9119 110.345C83.0559 111.041 81.1419 111.737 79.2859 111.737C78.6479 111.737 78.0099 111.65 77.3719 111.447C74.8489 110.635 73.2829 108.257 71.7749 105.966C70.7599 104.4 69.7739 102.95 68.6139 102.08C67.4249 101.21 65.6849 100.717 63.8869 100.224C61.2769 99.499 58.5509 98.745 57.0139 96.628C55.4769 94.54 55.5929 91.727 55.7089 89.03C55.7959 87.145 55.8539 85.347 55.3899 83.897C54.9549 82.534 53.8529 81.2 52.7219 79.75C51.0109 77.604 49.2129 75.371 49.2129 72.645C49.2129 69.919 50.9819 67.686 52.7219 65.54C53.8819 64.119 54.9549 62.756 55.3899 61.393C55.8539 59.943 55.7959 58.174 55.7089 56.26C55.5929 53.563 55.4769 50.75 57.0139 48.662C58.5509 46.545 61.2769 45.791 63.8869 45.066C65.7139 44.573 67.4249 44.08 68.6139 43.21C69.8029 42.34 70.7599 40.89 71.7749 39.324C73.2829 37.033 74.8489 34.684 77.3719 33.843C79.8079 33.06 82.3889 34.017 84.9119 34.945C86.6519 35.583 88.4209 36.25 89.9869 36.25C91.5529 36.25 93.3219 35.583 95.0619 34.945C97.5849 34.017 100.166 33.031 102.602 33.843C105.125 34.655 106.691 37.033 108.199 39.324C109.214 40.89 110.2 42.34 111.36 43.21C112.549 44.08 114.289 44.573 116.087 45.066C118.697 45.791 121.423 46.545 122.96 48.662C124.497 50.779 124.381 53.563 124.265 56.26C124.178 58.145 124.12 59.943 124.584 61.393C125.019 62.756 126.121 64.09 127.252 65.54C128.963 67.686 130.761 69.919 130.761 72.645C130.761 75.371 128.992 77.604 127.252 79.75C126.092 81.171 125.019 82.534 124.584 83.897L122.467 83.259Z" fill="currentColor"/> <path d="M89.9578 98.622C75.676 98.622 64.0388 86.9849 64.0388 72.703C64.0388 58.4211 75.676 46.784 89.9578 46.784C104.239 46.784 115.876 58.4206 115.877 72.702C115.848 86.9855 104.239 98.622 89.9578 98.622ZM89.9578 47.988C76.3421 47.988 65.2428 59.0575 65.2428 72.703C65.2428 86.3191 76.3417 97.418 89.9578 97.418C103.574 97.418 114.673 86.3191 114.673 72.703C114.673 59.0575 103.574 47.988 89.9578 47.988Z" fill="#62676D" stroke="#62676D"/> <path d="M124.149 130.384C113.332 130.384 104.545 121.597 104.545 110.78C104.545 99.963 113.332 91.176 124.149 91.176C134.966 91.176 143.753 99.963 143.753 110.78C143.753 121.597 134.937 130.384 124.149 130.384ZM124.149 93.409C114.55 93.409 106.749 101.21 106.749 110.809C106.749 120.408 114.55 128.209 124.149 128.209C133.748 128.209 141.549 120.408 141.549 110.809C141.549 101.21 133.719 93.409 124.149 93.409Z" fill="currentColor"/> <path d="M121.945 119.248C121.655 119.248 121.394 119.132 121.162 118.929C120.727 118.494 120.727 117.798 121.162 117.363L134.676 103.849C135.111 103.414 135.807 103.414 136.242 103.849C136.677 104.284 136.677 104.98 136.242 105.415L122.728 118.929C122.496 119.132 122.206 119.248 121.945 119.248Z" fill="currentColor"/> <path d="M121.945 119.248C121.655 119.248 121.394 119.132 121.162 118.929L113.042 110.809C112.607 110.374 112.607 109.678 113.042 109.243C113.477 108.808 114.173 108.808 114.608 109.243L122.728 117.363C123.163 117.798 123.163 118.494 122.728 118.929C122.496 119.132 122.206 119.248 121.945 119.248Z" fill="currentColor"/> <path d="M82.795 83.832H79.982C78.1991 83.832 76.741 82.3739 76.741 80.591V71.34C76.741 69.5571 78.1991 68.099 79.982 68.099H82.795C84.5778 68.099 86.036 69.5571 86.036 71.34V80.591C86.036 82.3764 84.6043 83.832 82.795 83.832ZM79.982 69.303C78.8648 69.303 77.945 70.2229 77.945 71.34V80.591C77.945 81.7081 78.8648 82.628 79.982 82.628H82.795C83.9121 82.628 84.832 81.7081 84.832 80.591V71.34C84.832 70.2229 83.9121 69.303 82.795 69.303H79.982Z" fill="#62676D" stroke="#62676D"/> <path d="M100.891 75.828C100.558 75.828 100.289 75.5588 100.289 75.226C100.289 74.8931 100.558 74.624 100.891 74.624C101.643 74.624 102.203 74.0114 102.203 73.312C102.203 72.6008 101.602 72 100.891 72C100.558 72 100.289 71.7308 100.289 71.398C100.289 71.0651 100.558 70.796 100.891 70.796C102.294 70.796 103.407 71.932 103.407 73.312C103.407 74.692 102.294 75.828 100.891 75.828Z" fill="#62676D" stroke="#62676D"/> <path d="M100.398 79.685C100.065 79.685 99.7959 79.4159 99.7959 79.083C99.7959 78.7502 100.065 78.481 100.398 78.481C101.15 78.481 101.71 77.8684 101.71 77.169C101.71 76.4173 101.097 75.857 100.398 75.857C100.065 75.857 99.7959 75.5879 99.7959 75.255C99.7959 74.9222 100.065 74.653 100.398 74.653C101.801 74.653 102.914 75.789 102.914 77.169C102.914 78.549 101.801 79.685 100.398 79.685Z" fill="#62676D" stroke="#62676D"/> <path d="M84.9017 81.2511L84.9018 81.2511L84.8998 81.247C84.7512 80.9332 84.8954 80.5849 85.164 80.4718L85.1741 80.4676L85.184 80.4629C85.4977 80.3143 85.846 80.4585 85.9591 80.727L85.9624 80.7349L85.9659 80.7425C86.4203 81.727 87.448 82.0972 88.2157 82.2423C89.0045 82.3915 89.7222 82.338 89.6969 82.338H89.8129H99.5279C100.28 82.338 100.84 81.7254 100.84 81.026C100.84 80.3149 100.239 79.714 99.5279 79.714C99.1951 79.714 98.9259 79.4449 98.9259 79.112C98.9259 78.7792 99.1951 78.51 99.5279 78.51C100.931 78.51 102.044 79.646 102.044 81.026C102.044 82.4029 100.905 83.542 99.5279 83.542H89.9258C89.8806 83.5342 89.8407 83.5315 89.8109 83.5302C89.7564 83.5279 89.7016 83.5297 89.6571 83.5316C89.6289 83.5328 89.6025 83.5342 89.5768 83.5355C89.5114 83.5389 89.4509 83.542 89.3779 83.542C88.8283 83.542 87.9304 83.4792 87.0549 83.153C86.1865 82.8294 85.3678 82.2587 84.9017 81.2511Z" fill="#62676D" stroke="#62676D"/> <path d="M92.8324 66.7294L92.8325 66.7283C92.9162 66.0032 93.1139 64.9816 93.4322 63.5927L93.4322 63.5924C93.6736 62.5367 93.6527 61.5747 93.1811 60.9042C92.7476 60.2759 91.999 60.0394 91.5291 59.9219L91.0332 59.7979L90.9202 60.2964L89.8096 65.1944L89.7487 65.2857C88.9288 66.4428 87.982 67.9218 87.2422 69.1112C86.8711 69.7079 86.5508 70.2338 86.3229 70.613C86.2091 70.8024 86.1179 70.9559 86.0548 71.0637C86.0234 71.1172 85.9981 71.161 85.9801 71.1928C85.9714 71.2082 85.9628 71.2236 85.9556 71.2371C85.9549 71.2383 85.9542 71.2398 85.9533 71.2414C85.7694 71.523 85.4155 71.6015 85.1435 71.4353L84.8828 71.862L85.1435 71.4353C84.848 71.2548 84.763 70.8921 84.9324 70.6147L84.9346 70.6112L84.9412 70.6001C85.0959 70.342 87.074 67.0426 88.6581 64.7513L88.7131 64.6718L88.7344 64.5775L89.8651 59.5912C90.0093 58.9762 90.5833 58.5799 91.2123 58.6424C92.0073 58.7248 93.3636 59.0487 94.1936 60.1792C94.8357 61.0694 95.018 62.27 94.6613 63.8338L94.661 63.8352C94.3981 65.0039 94.2512 65.7961 94.1626 66.3278L94.0656 66.91H94.6558H100.108C101.503 66.91 102.663 68.0129 102.711 69.3568C102.735 70.0204 102.476 70.676 102.007 71.1982C101.491 71.7109 100.866 71.971 100.166 71.971C99.833 71.971 99.5638 71.7018 99.5638 71.369C99.5638 71.0361 99.833 70.767 100.166 70.767C100.531 70.767 100.881 70.625 101.13 70.3261C101.337 70.0774 101.478 69.7644 101.478 69.397C101.478 68.6116 100.738 68.114 100.079 68.114H94.1048C93.7456 68.114 93.3877 67.9652 93.1382 67.6948C92.8948 67.4311 92.7905 67.0857 92.8324 66.7294Z" fill="#62676D" stroke="#62676D"/> <path d="M98.5708 111.795C99.2275 111.795 99.7598 111.263 99.7598 110.606C99.7598 109.949 99.2275 109.417 98.5708 109.417C97.9142 109.417 97.3818 109.949 97.3818 110.606C97.3818 111.263 97.9142 111.795 98.5708 111.795Z" fill="currentColor"/> <path d="M123.482 84.825C124.107 84.825 124.613 84.3186 124.613 83.694C124.613 83.0694 124.107 82.563 123.482 82.563C122.857 82.563 122.351 83.0694 122.351 83.694C122.351 84.3186 122.857 84.825 123.482 84.825Z" fill="currentColor"/> <path d="M95.7869 108.315L99.0059 109.504L98.1649 111.708L94.5979 110.229L95.7869 108.315Z" fill="currentColor"/> </svg>
    """
  end
end
