// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/SharesFactory.sol";
import "../src/DefaultTokenizedShares.sol";

// forge script ./script/Deploy.s.sol:DeploySSTORE2s -vvvv --broadcast --rpc-url ${GOERLI_RPC_URL}

contract DeploySSTORE2s is Script {
    function setUp() public {}

    function run() public {
        uint256 pk = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(pk);

        address chunk0 = SSTORE2.write(
            '<svg width="950" height="950" viewBox="0 0 950 950" xmlns="http://www.w3.org/2000/svg"><rect width="950" height="950" fill="black"/><ellipse class="b" cx="475" cy="750" rx="300" ry="40" fill="#8dd35f"/><path d="m214.56 679.67c-1.584-0.43814-5.2859-1.2776-8.2265-1.8654-4.3313-0.86587-7.1567-2.4365-14.88-8.2714-10.89-8.2272-14.979-12.525-20.945-22.013-5.373-8.5453-7.3793-15.972-11.151-41.28-1.6525-11.088-6.432-41.894-10.621-68.459-8.4192-53.388-9.099-62.11-5.813-74.581 2.9159-11.067 8.0286-20.317 15.27-27.629 8.162-8.241 15.784-12.809 26.126-15.657 8.2868-2.2821 66.807-15.304 239.52-53.299 217.25-47.791 275.92-60.581 283.68-61.837 9.5521-1.546 17.597-0.82413 27.529 2.4703 10.054 3.3351 43.036 25.831 46.984 32.046 3.5124 5.53 8.8554 21.172 10.352 30.305 9.8741 60.264 20.735 134.13 20.735 141.02 0 20.322-10.608 40.047-27.318 50.795-9.4198 6.059-15.467 8.3565-29.322 11.141-6.6 1.3262-69.672 14.313-140.16 28.86-70.488 14.547-154.51 31.879-186.72 38.515-32.208 6.6364-89.575 18.511-127.48 26.387-58.088 12.069-70.161 14.307-76.8 14.234-4.3324-0.0476-9.1732-0.44506-10.757-0.88321zm46.589-6.2898c30.418-6.3916 176.06-36.489 250.53-51.772 29.304-6.0141 76.392-15.735 104.64-21.602 28.248-5.867 74.355-15.388 102.46-21.158 50.906-10.451 51.135-10.508 60.48-15.229 14.854-7.5031 23.706-18.1 29.397-35.19 4.1577-12.485 3.7009-20.97-3.6564-67.914-3.4096-21.755-7.9577-51.003-10.107-64.995-5.2314-34.059-6.0096-37.403-11.17-48-3.9791-8.1706-5.0536-9.5641-10.323-13.386-16.018-11.62-32.43-22.179-37.967-24.429-5.567-2.2617-7.395-2.5049-18.831-2.5049-12.339 0-13.544 0.19731-46.634 7.6347-18.683 4.1991-76.521 16.962-128.53 28.361-215.63 47.264-355.75 78.475-360.83 80.376-7.635 2.8566-17.274 9.2836-22.034 14.691-9.9555 11.31-16.111 28.941-15.316 43.866 0.23298 4.373 4.5915 34.951 9.6856 67.951 13.028 84.397 12.69 82.596 17.202 91.62 4.9805 9.9599 14.258 20.164 25.104 27.611 11.136 7.6464 16.392 9.2917 29.893 9.3575 9.2818 0.0452 13.725-0.60743 36-5.2879zm-57.865-8.1209c-10.738-2.7111-24.484-14.047-29.833-24.603-3.688-7.278-4.8707-13.146-11.676-57.937-3.4094-22.44-8.1737-53.328-10.587-68.64-2.457-15.588-4.3749-31.029-4.358-35.087 0.0629-15.108 6.3985-31.063 16.052-40.421 9.35-9.0647 15.954-11.706 46.8-18.719 14.741-3.3513 27.543-6.0932 28.448-6.0932 1.7434 0 2.7955 2.5992 2.8172 6.96 0.01 1.9731 0.48607 2.64 1.8854 2.64 1.575 0 1.9753-0.9104 2.521-5.7337 0.46141-4.0783 1.0988-5.8659 2.2077-6.1916 4.8721-1.431 27.068-6.3147 28.7-6.3147 2.3074 0 3.099 1.7366 3.099 6.7985 0 3.0279 0.34845 3.7615 1.7867 3.7615 1.4882 0 1.875-0.97472 2.3158-5.8358 0.29104-3.2097 0.74163-6.0483 1.0013-6.308 0.25968-0.25967 6.4536-1.7699 13.764-3.356 7.3106-1.5861 36.777-8.0356 65.48-14.332 28.703-6.2965 52.787-11.448 53.52-11.448 0.95622 0 1.3322 1.3364 1.3322 4.7353 0 3.9678 0.32685 4.839 2.0166 5.3754 2.8996 0.9203 3.601-0.27175 3.9306-6.6806l0.29271-5.6899 12.48-2.6644c6.864-1.4654 13.02-2.6849 13.68-2.7101 0.75797-0.0289 1.2 1.3012 1.2 3.6108 0 4.3879 1.9476 7.4667 4.1812 6.6096 1.2236-0.46955 1.5788-1.9085 1.5788-6.396 0-3.1846 0.27274-5.7901 0.60608-5.7901 0.98433 0 50.918-10.823 104.35-22.617 27.367-6.0407 50.371-10.983 51.12-10.983 0.99474 0 1.3623 1.295 1.3623 4.8 0 4.4541 0.16953 4.8 2.3523 4.8 2.1633 0 2.4048-0.46402 3.0055-5.7732 0.54398-4.8081 0.99326-5.8534 2.6877-6.2528 14.118-3.3279 32.725-7.174 34.706-7.174 2.2328 0 2.4961 0.3504 2.3445 3.12-0.32158 5.8738-0.0948 6.48 2.4237 6.48 2.0859 0 2.4-0.424 2.4-3.24 0-5.9294 1.0668-9.24 2.9774-9.24 0.97757 0 10.391-1.944 20.918-4.32 22.648-5.1115 31.459-5.5897 41.438-2.249 15.94 5.3363 28.771 19.24 34.856 37.769 0.86695 2.64 5.485 30.072 10.262 60.96 4.7774 30.888 9.9035 63.72 11.391 72.96 2.132 13.24 2.5568 18.224 2.0042 23.52-1.5631 14.981-6.2232 24.657-16.972 35.239-10.746 10.579-13.403 11.648-46.175 18.578-18.639 3.9416-19.42 3.9903-19.42 1.2112 0-3.2217-2.1661-8.4682-3.4962-8.4682-1.9254 0-2.5188 1.8129-2.3921 7.3086 0.0656 2.8443-0.0979 5.1714-0.36329 5.1714-0.26538 0-6.3082 1.296-13.428 2.88-19.036 4.2348-20.64 4.0024-20.64-2.9886 0-3.1709-2.1442-4.5771-4.2784-2.8059-0.99713 0.82754-1.2257 2.3917-0.83346 5.7036 0.51413 4.341 0.40628 4.6155-2.2139 5.6349-1.5149 0.58935-18.738 4.32-38.274 8.2904s-53.228 10.906-74.872 15.412c-21.643 4.5064-40.759 8.1934-42.48 8.1934-2.9836 0-3.1283-0.16922-3.1283-3.6565 0-2.0111-0.648-4.4951-1.44-5.52-1.4233-1.8419-1.4573-1.8412-2.9312 0.0566-0.94384 1.2152-1.3995 3.451-1.2413 6.0906 0.18534 3.0922-0.16774 4.4044-1.3655 5.0747-0.88849 0.49722-21.39 4.9633-45.559 9.9246s-63.815 13.197-88.103 18.301c-24.288 5.1042-46.15 9.5023-48.582 9.7736l-4.4219 0.49326-0.65716-4.954c-0.40995-3.0903-1.2085-5.1655-2.1226-5.5163-2.5298-0.97077-3.7482 1.44-3.5081 6.9413 0.12557 2.8772 0.0638 5.2313-0.13708 5.2313-0.20096 0-6.074 1.296-13.051 2.88-6.9772 1.584-13.936 2.88-15.463 2.88-2.5436 0-2.7771-0.28785-2.7771-3.4231 0-1.8827-0.46637-4.2946-1.0364-5.3597-0.99957-1.8677-1.1041-1.8753-2.94-0.21378-1.4551 1.3168-1.8417 2.7304-1.6406 5.9991 0.21439 3.4863-0.0849 4.4222-1.62 5.0663-1.0356 0.43448-9.875 2.5684-19.643 4.7421-18.531 4.1238-31.944 5.4182-38.636 3.7287zm36.794-5.7672c9.7253-2.1272 18.438-4.1003 19.362-4.3847 1.2819-0.39451 1.68-1.5645 1.68-4.9368 0-4.7302 1.9498-7.9309 4.8312-7.9309 2.3264 0 3.4866 1.7629 4.2646 6.48 0.37011 2.244 0.79155 4.08 0.93653 4.08 0.7331 0 24.283-4.9078 25.728-5.3616 1.3278-0.41716 1.68-1.6161 1.68-5.7185 0-4.7478 0.23578-5.3126 2.7634-6.6197 2.5158-1.301 2.9029-1.2749 4.32 0.29093 0.91174 1.0075 1.5566 3.3788 1.5566 5.7244 0 2.2024 0.44287 4.0044 0.98415 4.0044 1.125 0 119.59-24.32 140.62-28.869 2.64-0.57099 13.44-2.8411 24-5.0447l19.2-4.0065 0.13646-4.4296c0.17305-5.6172 1.7116-8.5304 4.5053-8.5304 3.2165 0 4.4782 1.8122 4.4782 6.432 0 3.5775 0.27386 4.128 2.0536 4.128 1.1295 0 36.323-7.128 78.208-15.84 41.885-8.712 76.363-15.84 76.619-15.84s0.76218-2.6286 1.1256-5.8413c0.55067-4.8672 1.0382-6.0132 2.9238-6.8723 3.1623-1.4408 6.1107 1.3057 6.1107 5.6925 0 1.9716 0.55485 3.4543 1.4164 3.7848 1.1532 0.44252 21.148-3.2172 27.624-5.0561 1.3252-0.37629 1.68-1.538 1.68-5.5004 0-5.4772 1.1307-7.3273 4.4782-7.3273 2.5634 0 4.1618 2.5566 4.1618 6.6569 0 2.6548 0.29318 2.9431 2.993 2.9431 3.0694 0 26.597-4.6759 36.778-7.3093 12.758-3.3 23.293-10.614 30.349-21.07 5.6695-8.4018 7.0846-12.012 8.9915-22.936 1.3508-7.7387 1.3037-8.5773-1.4286-25.477-1.5539-9.6115-6.4804-41.085-10.948-69.941-4.4674-28.856-8.832-55.706-9.6992-59.666-3.591-16.398-14.821-31.657-28.236-38.368-6.1986-3.1006-8.456-3.6935-16.231-4.2628-8.4601-0.61951-10.34-0.37797-29.76 3.8234-11.401 2.4666-21.269 4.9161-21.929 5.4434-0.6628 0.52955-1.2 3.0398-1.2 5.6074 0 5.4958-2.3402 7.6278-6.3614 5.7956-1.8401-0.83839-2.2786-1.7702-2.2786-4.8421 0-2.0922-0.34812-4.0191-0.77359-4.282-0.61191-0.37818-22.343 3.8974-33.546 6.6003-1.9015 0.45875-2.16 1.1277-2.16 5.5908 0 5.4493-1.1275 7.3737-4.32 7.3737-2.9453 0-4.32-1.8431-4.32-5.792 0-1.9184-0.21454-3.7026-0.47676-3.9648-0.26221-0.26221-16.786 3.1257-36.72 7.5287-19.934 4.403-53.307 11.686-74.163 16.184s-38.989 8.5225-40.296 8.9433c-2.0894 0.67281-2.3416 1.2407-2.0913 4.7078 0.40857 5.6589-1.1553 8.0976-4.9565 7.7293-2.9127-0.28217-3.0788-0.52143-3.5362-5.0961l-0.48-4.8-3.36 0.29341c-1.848 0.16136-7.464 1.2764-12.48 2.4779l-9.12 2.1845-0.28563 5.9153c-0.26065 5.3979-0.49495 5.9678-2.6787 6.5159-3.2757 0.82214-6.1557-1.9175-6.1557-5.8557 0-4.0379-0.35975-4.2636-5.0873-3.1908-2.218 0.5033-30.385 6.7098-62.593 13.792-32.208 7.0824-59.471 13.093-60.584 13.356-1.6634 0.39384-2.121 1.4183-2.5681 5.7504-0.67907 6.5796-1.0944 7.2405-4.5507 7.2405-3.3023 0-4.7771-2.2034-4.7771-7.1369 0-1.8827-0.1849-3.4231-0.41089-3.4231-0.59525 0-25.676 5.7548-27.669 6.3488-1.35 0.40228-1.68 1.5972-1.68 6.084 0 5.1926-0.16791 5.6155-2.3989 6.042-3.2571 0.62264-4.9471-0.92565-6.1852-5.6665l-1.0424-3.9918-5.9868 1.3974c-3.2927 0.76855-15.45 3.5559-27.016 6.1941-11.566 2.6382-23.388 5.9129-26.272 7.2772-7.8445 3.711-17.927 13.711-22.054 21.875-4.2473 8.4013-6.9273 18.416-6.9488 25.967-0.0148 5.1757 19.505 135.4 22.232 148.31 2.2848 10.823 10.88 23.986 19.329 29.602 12.49 8.3013 22.688 8.9191 49.7 3.0107zm-29.89-13.783c-10.481-4.0504-17.976-10.627-22.55-19.789-2.1732-4.3522-3.1875-9.1599-5.7723-27.36-2.8569-20.116-3.002-22.229-1.6316-23.76 2.0665-2.3079 4.7403-2.1053 6.3341 0.48 0.73239 1.188 2.4914 10.8 3.909 21.36 1.6969 12.641 3.2806 20.84 4.6359 24 3.9779 9.2754 12.738 16.035 22.452 17.323 3.5292 0.46816 9.2038-0.27377 22.671-2.9641 19.607-3.9168 20.885-3.823 20.885 1.5336 0 3.128 0.95096 2.7372-16.32 6.7063-15.145 3.4806-29.37 4.4957-34.612 2.4699zm33.172-4.3916c16.353-3.541 15.84-3.3514 15.84-5.8517 0-2.3908-0.29169-2.362-21.107 2.087-7.121 1.522-15.216 2.7673-17.99 2.7673-9.5999 0-19.142-5.319-24.111-13.44-3.7233-6.0849-4.8357-10.511-7.7898-30.991-2.5689-17.811-3.6897-21.425-5.9449-19.17-0.83071 0.83071-0.81555 3.3075 0.0614 10.032 2.5623 19.648 5.0183 32.961 6.8407 37.081 3.8956 8.8066 13.498 17.588 22.131 20.24 4.9627 1.5241 17.142 0.47811 32.07-2.7542zm66-13.153c-1.7596-0.71001-1.4627-4.5984 0.48-6.2865 1.4851-1.2905 70.342-16.188 137.22-29.69 19.517-3.9399 20.42-4.038 22.216-2.4129 2.4195 2.1896 1.6408 5.2714-1.6512 6.5353-2.5146 0.9654-18.475 4.4579-60.589 13.258-12.408 2.5929-38.014 7.9806-56.901 11.973-32.569 6.8837-37.961 7.7595-40.779 6.6226zm70.8-15.071c34.056-7.1406 67.536-14.159 74.4-15.597 13.918-2.9158 15.772-3.736 13.523-5.9847-1.2981-1.2981-9.697 0.27518-78.528 14.71-42.391 8.89-77.589 16.559-78.218 17.041-0.62862 0.48271-0.8879 1.5423-0.57619 2.3546 0.75321 1.9628-2.4503 2.541 69.399-12.524zm-134.6-20.816c-6.5862-3.4782-7.0569-5.3036-16.179-62.748-3.1318-19.722-4.6501-31.896-4.2634-34.185 0.39529-2.3397 1.8302-4.7558 4.1968-7.0668l3.5962-3.5116 51.782-11.411c103.06-22.711 167.12-36.556 169.12-36.556 1.1271 0 7.1544-1.3163 13.394-2.9252 12.221-3.151 75.569-17.117 126.06-27.792 17.16-3.6278 41.977-9.0005 55.149-11.939 13.172-2.9388 25.755-5.3433 27.963-5.3433 8.0115 0 14.631 4.8641 16.717 12.283 2.0542 7.3067 13.451 79.054 13.451 84.68 0 7.2369-1.808 10.937-6.4998 13.304-3.8448 1.9392-16.148 5.0016-39.014 9.7115-7.8728 1.6216-49.993 10.524-93.6 19.783-43.607 9.259-88.358 18.73-99.446 21.046s-62.911 13.306-115.16 24.422c-52.252 11.116-96.964 20.192-99.36 20.168-2.3962-0.0233-5.9565-0.88727-7.9117-1.9198zm65.901-11.55c30.126-6.376 102.51-21.73 160.85-34.119 122.47-26.006 159.5-33.86 191.52-40.618 33.384-7.045 34.483-7.3807 38.423-11.742 2.1974-2.4323 3.3375-4.6475 3.3375-6.485 0-1.5349-3.0224-21.082-6.7164-43.437-7.0003-42.365-8.5045-48.196-13.231-51.293-3.0712-2.0124-3.6391-1.9237-40.053 6.2525-16.896 3.7938-70.896 15.533-120 26.086-49.104 10.554-107.64 23.25-130.08 28.214-34.958 7.7335-128.2 28.006-150.72 32.77-8.8845 1.8793-13.751 4.8287-14.968 9.0714-0.69824 2.4346 0.33425 10.824 4.5899 37.297 3.0199 18.785 5.9097 35.883 6.4217 37.995 0.9477 3.9089 1.7093 7.8978 2.6579 13.92 0.87333 5.5446 3.1683 7.2164 10.364 7.5493 1.5541 0.0719 27.474-5.086 57.6-11.462zm192.77 6.6885c-1.6863-1.7423-1.4919-4.1357 0.48-5.9097 0.98848-0.88933 10.373-3.3005 22.8-5.8577 11.616-2.3904 55.248-11.525 96.96-20.299 41.712-8.7739 84.129-17.632 94.259-19.684 21.011-4.2568 25.404-6.092 32.518-13.588 9.9598-10.493 11.378-19.209 7.0962-43.62-3.3301-18.986-3.5566-23.931-1.1539-25.19 2.5731-1.3484 5.7485 0.3396 6.3742 3.3884 0.30527 1.4874 1.7971 10.696 3.3152 20.464 4.1644 26.795 2.8894 36.297-6.4876 48.352-8.3234 10.701-14.821 13.77-39.922 18.859-10.032 2.034-30.552 6.3451-45.6 9.58-57.927 12.453-146.09 30.729-148.24 30.729-1.2366 0-3.7566 0.63017-5.6 1.4004-4.9525 2.0693-15.311 2.9172-16.803 1.3755zm87.133-18.083c169.67-35.617 154.46-31.761 163.76-41.495 6.0683-6.351 9.3848-12.105 11.351-19.692 1.8707-7.2193 1.9097-11.72 0.17449-20.163-0.73959-3.5985-2.1159-11.862-3.0584-18.363-1.844-12.719-3.0558-15.795-5.4426-13.814-1.2356 1.0255-1.0224 3.4363 1.6948 19.164 3.9642 22.945 3.7613 31.078-1.0126 40.606-6.2338 12.441-13.79 16.869-36.731 21.525-8.814 1.7891-39.569 8.2136-68.345 14.277s-73.488 15.42-99.36 20.793c-25.872 5.3728-47.631 10.335-48.354 11.027-1.5666 1.5009-0.66799 3.3628 1.623 3.3628 0.89984 0 38.566-7.7522 83.703-17.227zm-418.55-38.213c-0.99007-3.5297-4.9997-28.564-6.7538-42.169-1.0867-8.4281 0.66755-18.969 4.4054-26.471 3.64-7.3057 12.16-15.677 19.267-18.931 4.3734-2.002 34.457-8.9965 115.92-26.952 103.71-22.858 110.12-24.156 111.8-22.639 2.2812 2.0645 1.6339 5.8074-1.2301 7.1123-1.179 0.53719-7.5104 2.1336-14.07 3.5475-92.528 19.945-204.57 45.191-208.57 46.997-6.7751 3.0582-13.447 10.186-16.448 17.569-3.3007 8.1232-3.1632 15.936 0.71424 40.575 1.7034 10.824 2.9604 20.868 2.7933 22.32-0.26483 2.3017-0.72125 2.64-3.5615 2.64-2.9449 0-3.3546-0.34563-4.2675-3.6zm5.9401 0.57787c0.20205-0.60617-0.83253-8.7062-2.2991-18-4.0454-25.637-4.655-33.858-2.985-40.253 2.967-11.362 9.995-20.36 18.701-23.943 4.6443-1.9114 44.671-10.919 174.06-39.171 25.344-5.534 47.052-10.473 48.24-10.976 2.1497-0.90965 2.899-3.2651 1.3443-4.226-0.44861-0.27726-30.149 5.9694-66 13.881-35.851 7.9121-84.84 18.718-108.86 24.013-24.024 5.2952-46.272 10.714-49.44 12.041-11.913 4.991-20.51 16.934-23.076 32.055-1.1488 6.7694-1.0274 8.4345 2.0288 27.84 1.7879 11.352 3.7083 22.26 4.2677 24.24 0.96975 3.4326 3.2454 4.8439 4.0274 2.4979zm568.83-129.16c-1.9608-0.51247-1.7238 0.47634-5.4169-22.6-1.6471-10.292-3.7402-19.94-4.8945-22.56-2.73-6.1974-10.845-14.357-17.077-17.171-6.9444-3.1351-12.484-2.9404-29.591 1.0397-18.141 4.2207-197.15 43.607-202.94 44.652-2.376 0.42864-10.201 2.063-17.389 3.6318-8.7262 1.9046-13.591 2.5603-14.64 1.9731-1.8546-1.0379-2.1149-6.0837-0.37129-7.1965 0.66-0.42121 7.464-2.1375 15.12-3.8141 7.656-1.6765 38.76-8.471 69.12-15.099 30.36-6.6278 77.88-17.067 105.6-23.198 65.578-14.505 62.462-13.935 69.533-12.71 14.954 2.5906 28.04 13.916 32.485 28.114 1.4688 4.6916 6.6877 37.132 6.6973 41.629 7e-3 3.295-2.0702 4.3976-6.2345 3.3092zm4.0793-4.7806c0-1.4092-1.3526-10.805-3.0058-20.88-3.3651-20.508-5.6587-26.653-12.69-34.001-4.7536-4.9674-14.647-10.213-21.671-11.489-5.5588-1.0103-12.25 0.25556-72.553 13.726-23.371 5.2207-105.78 23.255-167.52 36.66-14.808 3.2152-19.874 5.1592-18.641 7.1542 1.1334 1.8338-5.4672 3.1897 133.84-27.494 44.088-9.7107 88.8-19.598 99.36-21.971 18.621-4.1853 19.388-4.2789 25.44-3.1008 8.334 1.6223 12.961 4.1702 18.816 10.362 6.1921 6.5472 8.0809 12.149 11.436 33.916 3.0474 19.773 3.0222 19.68 5.3328 19.68 1.3703 0 1.8553-0.66978 1.8553-2.5622z" stroke-width=".96"/><g fill="#a02c5a"><path d="m505.96 585.72c-0.69437-0.69437-0.26076-2.1198 0.76328-2.5091 4.5196-1.7184 25.001-6.0892 195.38-41.695 15.004-3.1355 29.649-6.3635 32.545-7.1732 12.536-3.5059 19.37-8.6691 24.062-18.179 3.2047-6.4955 3.9199-9.6809 3.9287-17.499 8e-3 -6.8601-0.53085-11.575-3.0811-26.97-2.1424-12.933-2.1713-16.313-0.13939-16.313 1.1496 0 2.4413 5.4521 5.1442 21.712 3.2965 19.831 3.515 23.301 1.8834 29.917-1.2068 4.8934-4.358 11.795-6.911 15.136-4.2717 5.5903-9.0571 10.379-11.711 11.718-7.7676 3.9211-26.948 8.1984-176.86 39.439-64.636 13.47-64.065 13.361-65.01 12.416z" stroke-width=".4786"/><path d="m748.01 398.69c-0.20778-0.54145-1.6191-8.4704-3.1362-17.62-2.9729-17.929-4.9433-25.34-8.01-30.128-2.6341-4.1127-8.6424-9.6442-12.705-11.696-4.5988-2.3233-13.166-4.1291-17.455-3.6792-1.9092 0.20029-15.959 3.1164-31.222 6.4801s-60.188 13.269-99.834 22.012c-115.41 25.451-118.94 26.171-119.58 24.373-0.74487-2.0964 2.2856-2.8279 100.42-24.238 23.149-5.0504 62.744-13.734 87.989-19.296 67.396-14.85 65.701-14.576 73.663-11.922 7.4642 2.4878 13.628 6.3099 18.281 11.335 6.5488 7.0734 8.8404 13.774 12.452 36.413 1.8244 11.434 2.3397 15.772 2.1506 18.105-0.0954 1.1768-2.5475 1.064-3.0089-0.13841z" stroke-width=".67684"/><path d="m175.96 530.71c-0.60865-0.92891-2.3909-9.3714-4.1794-19.798-3.979-23.196-4.2641-32.011-1.3101-40.514 2.5073-7.2168 5.214-11.8 9.9739-16.888 8.2055-8.7717 4.7314-7.7979 113.3-31.758 100.12-22.095 120.49-26.415 121.94-25.858 1.3188 0.50608 0.38247 2.196-1.6798 3.0316-2.4111 0.97697-17.742 4.4366-82.695 18.661-113.86 24.935-136.15 30.071-141.23 32.543-4.5287 2.201-10.997 9.1196-13.688 14.641-5.0811 10.425-5.1695 15.747-0.76039 45.792 1.4937 10.178 2.7158 19.24 2.7158 20.136 0 2.0798-1.0247 2.0842-2.3836 0.0102z" stroke-width=".67684"/><path d="m311.57 625.15c0-1.659 5.5212-2.9939 61.739-14.928 62.983-13.37 88.37-18.328 92.213-18.007 3.1742 0.26445 3.324 0.39699 1.582 1.3995-1.6764 0.96477-111.81 24.417-140.7 29.962-5.791 1.1114-11.498 2.2293-12.683 2.4843-1.4485 0.31183-2.1537 0.0138-2.1537-0.91018z" stroke-width=".9572"/><path d="m211.87 643.34c-5.0356-1.3572-7.9641-3.0987-13.267-7.8899-6.8398-6.1793-9.4062-11.44-11.915-24.422-2.7273-14.112-4.668-29.182-4.1784-32.446l0.35324-2.3546 1.1803 2.0999c0.64918 1.1549 2.2781 9.1236 3.6199 17.708 1.3418 8.5845 2.8526 17.455 3.3575 19.713 2.2343 9.9903 8.4032 18.128 16.94 22.346 6.3763 3.1505 16.617 2.8661 35.03-0.97275 13.531-2.8211 15.927-2.9846 15.927-1.0867 0 1.2009-4.6768 2.528-18.187 5.1607-15.716 3.0625-23.349 3.6296-28.861 2.1441z" stroke-width=".9572"/></g>'
        );
        address chunk1 = SSTORE2.write(
            '<g stroke-width=".9572"><path d="m211.16 676.66c-14.276-3.839-33.15-20.62-40.821-36.294-3.807-7.7794-5.261-15.12-13.272-67.004-9.5115-61.6-13.008-86.971-12.994-94.284 0.0299-15.616 6.5963-31.781 17.109-42.117 9.9673-9.7998 16.076-12.358 45.573-19.083 38.136-8.6947 161.61-36.117 258.44-57.396 47.908-10.528 118.33-26.026 156.5-34.44 86.876-19.151 83.775-18.578 98.062-18.119 10.778 0.34631 11.934 0.57533 17.568 3.4816 9.913 5.1135 37.244 23.942 40.823 28.124 3.6267 4.237 8.3298 14.659 10.582 23.45 1.4455 5.6423 17.307 106.02 20.085 127.11 2.425 18.408 2.1717 29.143-0.90355 38.288-1.4162 4.2117-3.9186 10.027-5.5608 12.922-6.8149 12.016-21.337 22.755-36.191 26.763-6.7315 1.8163-96.245 20.432-306.23 63.684-44.486 9.1631-110.03 22.704-145.65 30.091-35.623 7.387-68.523 14.086-73.112 14.886-10.33 1.8014-23.181 1.7755-30.009-0.0606zm12.346-11.351c10.534-1.4074 35.652-6.8474 38.527-8.3443 1.2043-0.62693 1.6751-2.0403 1.6751-5.0285 0-2.5562 0.5617-4.6227 1.4589-5.3673 1.9585-1.6254 2.5051-0.86724 3.0852 4.2793 0.60597 5.3762 0.32483 5.3538 18.585 1.4831 7.4508-1.5794 13.694-2.8716 13.874-2.8716 0.18004 0 0.32735-2.559 0.32735-5.6867 0-8.7736 3.0747-8.9809 4.3881-0.29579 0.50909 3.3664 0.97835 4.0681 2.7204 4.0681 3.1266 0 151.73-30.512 177.49-36.445 9.4663-2.1796 9.3552-2.0733 9.9281-9.5008 0.39676-5.1443 2.9294-4.3883 4.0083 1.1965 0.71272 3.6894 1.2542 4.546 2.8716 4.5429 3.8136-8e-3 149.03-29.773 155.41-31.855 3.4485-1.1258 3.5839-1.3408 4.0465-6.4293 0.58525-6.4377 2.9711-7.3972 3.9174-1.5754 1.0254 6.3081 1.5622 6.3514 23.123 1.866l12.204-2.5389v-5.5198c0-8.3364 3.0673-8.757 4.4303-0.60743 0.57547 3.4408 0.75699 3.5895 4.3817 3.5895 3.8371 0 31.333-5.5857 40.962-8.3213 8.0318-2.2818 13.623-5.4571 19.992-11.354 14.398-13.33 20.609-30.164 18.233-49.417-1.8913-15.326-19.036-123.75-21.956-138.85-5.2362-27.079-26.431-46.799-50.111-46.625-7.4332 0.0547-12.378 0.85377-35.408 5.7217-16.822 3.5557-16.897 3.6071-16.897 11.52 0 3.1283-0.32435 3.7665-1.9144 3.7665-1.6591 0-1.9144-0.63813-1.9144-4.786 0-4.5056-0.14456-4.786-2.4679-4.786-3.1822 0-33.932 6.4669-35.819 7.533-0.78917 0.44583-1.8745 3.1287-2.4118 5.962-0.68804 3.628-1.4667 5.2457-2.6332 5.4703-1.3728 0.26437-1.6563-0.42072-1.6563-4.0021 0-2.3766-0.41931-4.5802-0.93179-4.897-1.0826-0.66906-3.6277-0.14181-84.737 17.554-33.693 7.3511-63.687 13.856-66.654 14.454-4.93 0.99517-5.4438 1.3417-5.9825 4.035-0.32409 1.6205-0.58927 4.1593-0.58927 5.6418 0 5.9066-3.6518 3.572-4.5183-2.8886-0.51679-3.8529-0.52187-3.857-4.0863-3.287-1.9629 0.31388-8.0447 1.5261-13.515 2.6938l-9.9463 2.1231-0.9572 5.846c-0.52646 3.2153-1.2698 6.1526-1.652 6.5273-1.4404 1.4125-3.6126-1.8317-3.6126-5.3954 0-2.0103-0.37794-3.8887-0.83986-4.1741-0.831-0.51359-27.023 4.9685-91.051 19.058-18.163 3.9966-35.065 7.7156-37.561 8.2643s-4.8097 1.4372-5.1416 1.9743c-0.33196 0.53712-0.87426 3.1591-1.2051 5.8267-0.73798 5.9501-2.9945 7.3964-2.9945 1.9193 0-2.0491-0.57859-4.5169-1.2857-5.484-1.2375-1.6924-1.8211-1.6418-15.554 1.3471-7.8476 1.708-14.989 3.4911-15.87 3.9625-0.97937 0.52414-1.909 2.7807-2.3933 5.8091-0.96908 6.0605-2.7128 7.0106-3.5266 1.9215-0.32906-2.0578-1.1611-4.2086-1.849-4.7795-2.387-1.981-53.855 10.146-64.381 15.169-15.091 7.2024-25.671 23.241-28.069 42.55-1.1587 9.3332-0.31041 16.523 9.4354 79.97 12.43 80.923 13.188 84.627 19.047 93.143 6.1067 8.8758 18.195 18.058 26.845 20.39 5.7474 1.5497 9.0773 1.5384 21.126-0.0713z" fill="#999"/><path d="m203.01 661.79c-14.122-3.3127-28.102-19.621-31.698-36.976-4.0053-19.332-21.636-139.49-21.594-147.17 0.0661-11.989 5.6171-25.761 14.057-34.877 10.18-10.996 14.508-12.804 50.461-21.091 11.487-2.6475 21.27-4.8137 21.739-4.8137s1.3155 1.7156 1.8801 3.8125c2.249 8.352 9.5763 7.2568 9.5763-1.4314 0-2.3129 0.53485-4.5136 1.1965-4.9232 0.65807-0.40734 7.0115-2.0932 14.119-3.7463l12.922-3.0056 0.50343 3.9291c0.68622 5.3557 1.4801 6.3221 5.1938 6.3221 3.5291 0 3.883-0.51783 4.8748-7.1318 0.49512-3.3017 1.2187-4.7345 2.7093-5.3646 2.2119-0.93499 123.45-27.706 125.47-27.706 0.69921 0 1.4987 1.6482 1.8426 3.7986 0.67473 4.2195 3.2409 6.2777 6.734 5.401 1.7881-0.44878 2.276-1.5053 3.0217-6.5425l0.88929-6.0072 9.0934-2.0776c13.7-3.1301 13.868-3.1039 14.915 2.3169 0.77636 4.0188 1.1906 4.5825 3.5685 4.8551 3.9933 0.45788 5.446-1.3002 5.446-6.591 0-2.5368 0.38807-4.8521 0.86238-5.1453s10.489-2.6628 22.255-5.2658c32.676-7.2292 122.39-26.661 126.44-27.386l3.5895-0.6428v3.7439c0 4.4386 1.3266 6.0411 5.0011 6.0411 3.1452 0 4.5708-2.6862 4.5708-8.6126 0-4.358-1.2432-3.8069 17.23-7.6376 17.955-3.7234 18.183-3.7206 18.201 0.21716 0.0187 3.9592 0.83356 5.1998 3.9254 5.9758 3.3738 0.84678 5.6279-1.566 5.6465-6.0442 8e-3 -1.9366 0.38557-4.1065 0.8389-4.822 0.92108-1.4537 13.273-4.6361 32.553-8.3869 11.578-2.2526 13.599-2.3956 20.764-1.4707 13.499 1.7425 25.211 9.3936 33.503 21.886 7.82 11.781 7.9781 12.523 22.292 104.61 4.705 30.271 8.8196 56.98 9.1435 59.354 0.65278 4.7823-1.5056 17.886-3.8836 23.577-2.3199 5.5524-8.2516 13.777-13.414 18.599-5.7885 5.4069-11.475 8.7621-19.245 11.355-7.666 2.5584-39.323 8.9486-41.05 8.2861-0.72253-0.27726-1.3137-1.6228-1.3137-2.9901 0-4.0295-1.6699-6.1889-4.786-6.1889-3.3977 0-4.786 2.1933-4.786 7.561 0 2.8036-0.49446 4.1227-1.8092 4.8263-2.7904 1.4934-24.449 5.2555-26.259 4.5612-0.8829-0.3388-1.6053-1.6105-1.6053-2.826 0-2.9826-2.5704-6.4648-4.7719-6.4648-2.9367 0-4.5281 2.4605-5.2313 8.0883-0.36507 2.9219-0.98197 5.3125-1.3709 5.3125-0.38893 0-10.157 1.9637-21.707 4.3637-11.55 2.4-45.122 9.2972-74.603 15.327-29.482 6.0299-54.735 11.196-56.119 11.481-2.3537 0.48379-2.5574 0.24103-3.1578-3.7625-0.72657-4.8451-2.3216-6.6398-5.4966-6.1847-2.7436 0.39321-4.5899 3.9664-4.6128 8.9275l-0.0177 3.8288-31.345 6.5134c-50.137 10.418-151.54 31.296-152 31.296-0.23418 0-0.42579-1.2642-0.42579-2.8093 0-4.7887-1.6005-7.7199-4.2153-7.7199-3.5276 0-5.3566 2.4346-5.3566 7.1301 0 2.267-0.53842 4.5426-1.1965 5.0568-0.65807 0.51426-5.9346 1.8919-11.726 3.0614-5.791 1.1695-11.259 2.3306-12.152 2.5803-1.2513 0.34998-1.7731-0.37873-2.2797-3.1835-0.95556-5.2908-2.0949-6.9876-4.6917-6.9876-3.0064 0-5.2852 3.343-5.2852 7.7534 0 1.9242-0.53843 3.9134-1.1965 4.4205-1.3108 1.0099-25.255 6.3996-35.177 7.9179-7.4585 1.1414-16.325 1.0987-21.449-0.10331zm39.157-17.652c19.596-3.9293 20.517-4.3853 19.229-9.5171-0.5344-2.1292-1.0956-2.3903-5.1285-2.3856-2.4906 3e-3 -10.128 1.0968-16.972 2.431-21.015 4.0968-27.491 3.3201-36.219-4.3438-7.3014-6.4107-8.6799-10.603-13.16-40.021-2.3103-15.169-3.6562-18.128-7.7761-17.094-1.3421 0.33684-2.6725 1.5009-2.9564 2.5869-1.19 4.5505 5.18 44.502 8.0363 50.402 2.69 5.5567 9.7352 13.198 15.028 16.3 9.5812 5.6149 18.313 5.9739 39.92 1.6412zm95.72-19.596c33.346-6.6984 122.45-25.739 127.49-27.242 3.3782-1.0084 5.1664-2.1108 5.5902-3.446 0.77375-2.4379-1.9144-5.6554-4.7231-5.6533-3.6132 3e-3 -89.305 17.74-134.57 27.855-22.126 4.9441-23.936 5.7046-23.936 10.056 0 1.1716 0.53842 2.3606 1.1965 2.642 1.8918 0.80913 9.3938-0.282 28.955-4.2114zm-59.965-34.499c13.502-2.6709 64.176-13.248 112.61-23.504 48.434-10.257 132.86-28.115 187.61-39.687 104.14-22.009 116.55-24.803 122.04-27.477 4.0932-1.9932 6.6969-6.8473 6.6989-12.489 3e-3 -7.6237-11.06-78.114-13.579-86.52-2.3811-7.9474-11.297-13.166-20.071-11.748-9.804 1.5847-175.45 37.456-202.78 43.911-5.5278 1.306-17.588 3.9041-26.802 5.7737-9.213 1.8696-54.225 11.607-100.03 21.64-45.802 10.032-89.522 19.581-97.155 21.221-15.041 3.2297-17.542 4.5711-20.62 11.057-1.9211 4.0483-1.7683 5.6808 4.0095 42.854 4.2561 27.383 6.7577 41.218 8.8472 48.928 1.2333 4.551 5.0505 8.7808 8.6311 9.5639 1.3653 0.29862 2.9131 0.68661 3.4396 0.86223 1.7944 0.59858 2.6105 0.46671 27.14-4.3858zm240.95-2.8288c1.4244-0.54156 8.2366-2.0824 15.138-3.4242 27.229-5.2936 190.16-39.523 199.68-41.952 14.446-3.6828 23.044-9.3553 29.553-19.499 4.8598-7.5734 5.9955-12.015 5.9564-23.295-0.0406-11.714-4.2952-41.322-6.4108-44.613-0.82958-1.2906-2.344-2.1537-3.779-2.1537-4.6842 0-4.8408 5.379-0.81892 28.125 0.84865 4.7997 1.5887 12.603 1.6445 17.341 0.0872 7.4049-0.25083 9.3777-2.4071 14.047-4.8016 10.398-13.319 17.259-25.174 20.279-3.1588 0.80465-51.401 10.988-107.21 22.631-107.45 22.416-120.11 25.244-121.28 27.081-0.90798 1.4285-0.983 4.9208-0.12417 5.7797 1.0034 1.0034 12.357 0.74506 15.228-0.3465zm-338.48-53.049c0.90757-1.0936 0.52616-5.8251-1.7972-22.295-4.646-32.935-3.838-41.521 4.8349-51.374 7.8524-8.9208 4.6858-8.0484 128.99-35.538 92.899-20.545 104.66-23.233 105.47-24.114 1.5127-1.6464 1.779-4.7708 0.55-6.4516-1.2118-1.6572-1.8215-1.7029-8.38-0.62831-14.98 2.4544-172.85 37.166-203.3 44.7-14.399 3.563-18.065 4.8378-22.316 7.7606-10.264 7.057-16.488 17.182-18.491 30.079-0.98975 6.3734-0.86406 9.1668 1.0121 22.494 2.8093 19.956 5.4823 33.764 6.8566 35.42 1.4436 1.7394 5.1126 1.709 6.5761-0.0545zm573.01-131.81c1.1596-1.8763 0.48055-9.306-2.476-27.091-3.3676-20.258-5.894-26.635-13.608-34.347-2.9744-2.9741-7.8235-6.4215-11.748-8.3526-6.318-3.1084-7.2081-3.2841-16.272-3.2118-8.7946 0.0702-16.802 1.6706-96.694 19.325-47.908 10.587-102.12 22.533-120.47 26.548-18.35 4.0148-34.359 7.6777-35.574 8.1396-4.7284 1.7977-3.6683 8.6072 1.34 8.6072 4.8387 0 35.218-6.4848 170.5-36.394 40.274-8.9044 75.647-16.472 78.607-16.817 7.6161-0.8871 13.843 1.382 20.508 7.4736 5.8069 5.3072 9.3166 10.663 10.842 16.543 0.54617 2.1058 2.3118 11.547 3.9236 20.98 1.6118 9.4332 3.4066 17.725 3.9884 18.426 1.2985 1.5646 6.2016 1.6825 7.1354 0.17158z" fill="#ececec"/><path class="b" d="m250.17 591.35c-4.3918-0.66916-5.457-3.0651-8.4516-19.01-3.7281-19.85-10.344-61.487-11.153-70.192-1.064-11.448 0.4093-12.251 36.991-20.161 14.994-3.2421 62.583-13.6 105.75-23.018s113.38-24.665 156.02-33.884c42.643-9.2185 90.455-19.611 106.25-23.094 44.459-9.8048 46.31-10.125 49.353-8.5516 4.697 2.4289 6.9465 11.438 14.691 58.838 6.1355 37.553 5.9679 35.631 3.4615 39.687-2.7277 4.4136-5.4585 5.7639-17.47 8.6385-11.468 2.7445-358.63 76.421-398.93 84.662-30.407 6.2185-32.902 6.6341-36.513 6.0838z" fill="#8dd35f"/></g><text x="135" y="550" class="t">C:\\> address</text><text x="135" y="570" class="t">> '
        );
        address chunk2 = SSTORE2.write(
            '</text><text x="135" y="595" class="t">C:\\> totalReleased</text><text x="135" y="615" class="t">> '
        );
        address chunk3 = SSTORE2.write(
            " ethers</text><style>.t{font:bold 17px courier new;fill:black;rotate:-11.7deg}@keyframes b{10%{visibility:hidden}11%{visibility:visible}12%{visibility:hidden}13%{visibility:visible}25%{visibility:hidden}26%{visibility:visible}}.b{animation:b 10s steps(100,start) infinite}</style></svg>"
        );

        vm.stopBroadcast();

        console.log("Chunk0 deployed at:", chunk0);
        console.log("Chunk1 deployed at:", chunk1);
        console.log("Chunk2 deployed at:", chunk2);
        console.log("Chunk3 deployed at:", chunk3);
    }
}

// forge script ./script/Deploy.s.sol:DeployScript -vvvv --broadcast --verify --rpc-url ${GOERLI_RPC_URL}
contract DeployScript is Script {
    function setUp() public {}

    function run() public {
        uint256 pk = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(pk);

        address chunk0 = 0x0775698813dB69806a556a01533f136D00Fdd3aB;
        address chunk1 = 0x83C09900d8B4d008d89E5eC3211E22c7c2253B38;
        address chunk2 = 0x3fE043246D5fd6DDff72FA0Da2fF1c3AA112a1B5;
        address chunk3 = 0xd381B9e38F0751E0e46f2379086C8E35F59D82bd;
        address sharesFactory =
            address(new SharesFactory(address(new DefaultTokenizedShares(chunk0, chunk1, chunk2, chunk3))));

        vm.stopBroadcast();

        console.log("SharesFactory deployed at:", sharesFactory);
    }
}
