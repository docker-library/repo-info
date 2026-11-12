## `caddy:2-windowsservercore`

```console
$ docker pull caddy@sha256:6fbbc15a61a2b78ad07907db1a979856d9439adf0687b65a443ca0b2ba0b7816
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33822; amd64
	-	windows version 10.0.20348.5870; amd64

### `caddy:2-windowsservercore` - windows version 10.0.26100.33822; amd64

```console
$ docker pull caddy@sha256:1151a956b2ac5fbb01e6c3ce47aa49ea5c241305b8cad4c8f3981f65999ef719
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2426950037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77e20e0a92b0d488e566bce5382a3395cf69302fc4586ddd202f023ee1e40bd2`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Mon, 09 Nov 2026 13:42:43 GMT
RUN Install update 10.0.26100.33822
# Wed, 11 Nov 2026 21:51:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 22:03:03 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Wed, 11 Nov 2026 22:03:04 GMT
ENV CADDY_VERSION=v2.11.9
# Wed, 11 Nov 2026 22:03:11 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Wed, 11 Nov 2026 22:03:11 GMT
ENV XDG_CONFIG_HOME=c:/config
# Wed, 11 Nov 2026 22:03:12 GMT
ENV XDG_DATA_HOME=c:/data
# Wed, 11 Nov 2026 22:03:12 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Wed, 11 Nov 2026 22:03:12 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 11 Nov 2026 22:03:13 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 11 Nov 2026 22:03:13 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 11 Nov 2026 22:03:14 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 11 Nov 2026 22:03:14 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 11 Nov 2026 22:03:15 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 11 Nov 2026 22:03:15 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 11 Nov 2026 22:03:16 GMT
EXPOSE 80
# Wed, 11 Nov 2026 22:03:17 GMT
EXPOSE 443
# Wed, 11 Nov 2026 22:03:18 GMT
EXPOSE 443/udp
# Wed, 11 Nov 2026 22:03:18 GMT
EXPOSE 2019
# Wed, 11 Nov 2026 22:03:23 GMT
RUN caddy version
# Wed, 11 Nov 2026 22:03:23 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01aa8c296f8ae8139a1d427afdba7dbdd8dc375687e3ae8dc46c1975fbab554`  
		Last Modified: Tue, 10 Nov 2026 19:11:08 GMT  
		Size: 884.3 MB (884271544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ee124fcf06ce994877ef03c64e2c448fe5d4ce41e5657d61415da28c839b8dd`  
		Last Modified: Wed, 11 Nov 2026 21:52:14 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0df0752c3406e34cf939e69e50807eeb74c9ef54049969defc55db10d56f5c0`  
		Last Modified: Wed, 11 Nov 2026 22:03:32 GMT  
		Size: 370.9 KB (370897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28186984653c3bb6ed9aad6169a85ce53ad46e0e8e245bf4b2ef5be6939dde2d`  
		Last Modified: Wed, 11 Nov 2026 22:03:32 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006b73238212aa4afc061c4c64d09a5755f8b233d0b3b36c7c9c156ff5f00ec4`  
		Last Modified: Wed, 11 Nov 2026 22:03:35 GMT  
		Size: 18.9 MB (18865584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:335b5a2fac09b6e9f67a8c5dbf7d12f90fb79ad7fd1b96035d31b97650f447b2`  
		Last Modified: Wed, 11 Nov 2026 22:03:32 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6509104c0721ed46019eb56889a2aa95fdd0df26bbb373a67265c72da68cfbe`  
		Last Modified: Wed, 11 Nov 2026 22:03:31 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6deac80e0c3fbd0e3221b4600b89c887086d8549f9e1f26b7ecf86afca2e5a`  
		Last Modified: Wed, 11 Nov 2026 22:03:30 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cce578038ffb1a77f886eaf5023d6db3dd2b2f196a71074bb214d0df392e92`  
		Last Modified: Wed, 11 Nov 2026 22:03:30 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35368d8e184f4b5800a440e56040ebe90232a6cf2cd3f268c4fa703f137f93b1`  
		Last Modified: Wed, 11 Nov 2026 22:03:30 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5437eb4f79b50c113ccf789c9f0d215202a05e4086f47f15ea9adb2f23f64f58`  
		Last Modified: Wed, 11 Nov 2026 22:03:30 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06147a343c7b3721f18c6d25ba71314316b79821b539fff25a6ffaac72ebf40a`  
		Last Modified: Wed, 11 Nov 2026 22:03:29 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0440a98dd73ee58beb9e3ad096ad2023812323b75ec0adb3483552fbafea27f`  
		Last Modified: Wed, 11 Nov 2026 22:03:29 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9958f2987b2e3c35f76aa2561fe0e9ccce4a133be24a4f20dbb2f87be0a4b262`  
		Last Modified: Wed, 11 Nov 2026 22:03:29 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b062a916fa5ea36351401d617f203070b6603e2d7cd215dfc744f7f20929e7e7`  
		Last Modified: Wed, 11 Nov 2026 22:03:29 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22607552ba7bb2a9e5b9019ba6fd09c5fdbca337a3c98ac53a2baa9585dc1f2`  
		Last Modified: Wed, 11 Nov 2026 22:03:29 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1816eb802d28ae8edb2e0aab01e15e4e97b626eba7c4e6c56d359229b469eb8e`  
		Last Modified: Wed, 11 Nov 2026 22:03:27 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7389bbd66d9b1a0882cf0683d06f66c52f96aa17c7d985189648b3ce97c9e76f`  
		Last Modified: Wed, 11 Nov 2026 22:03:27 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff27494d064f713cb87db9ed6892362cc1635a8ae8595e49bb7094fd9856910`  
		Last Modified: Wed, 11 Nov 2026 22:03:27 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fbf6e62e7b1b828c3c915d0290a5fbce3282fad98db6a44075a76bc15d01794`  
		Last Modified: Wed, 11 Nov 2026 22:03:27 GMT  
		Size: 360.9 KB (360854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1144407449d5200c7110d5a19de0664d47a2690e77de3b403e19fd4b5db36459`  
		Last Modified: Wed, 11 Nov 2026 22:03:27 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:2-windowsservercore` - windows version 10.0.20348.5870; amd64

```console
$ docker pull caddy@sha256:5fd42cd71e14ad7f1c0a61b2c7a3e602aaed32cb969bd987fb89eec6038868d8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2265907075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8389ee6574787f14a28b71ee86e6510645c34dfff3419008a25639769facdb4d`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Mon, 09 Nov 2026 05:20:19 GMT
RUN Install update 10.0.20348.5870
# Wed, 11 Nov 2026 21:50:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Nov 2026 22:16:02 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Wed, 11 Nov 2026 22:16:03 GMT
ENV CADDY_VERSION=v2.11.9
# Wed, 11 Nov 2026 22:16:12 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Wed, 11 Nov 2026 22:16:12 GMT
ENV XDG_CONFIG_HOME=c:/config
# Wed, 11 Nov 2026 22:16:13 GMT
ENV XDG_DATA_HOME=c:/data
# Wed, 11 Nov 2026 22:16:13 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Wed, 11 Nov 2026 22:16:14 GMT
LABEL org.opencontainers.image.title=Caddy
# Wed, 11 Nov 2026 22:16:14 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 11 Nov 2026 22:16:15 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 11 Nov 2026 22:16:15 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 11 Nov 2026 22:16:16 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 11 Nov 2026 22:16:16 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 11 Nov 2026 22:16:17 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 11 Nov 2026 22:16:18 GMT
EXPOSE 80
# Wed, 11 Nov 2026 22:16:18 GMT
EXPOSE 443
# Wed, 11 Nov 2026 22:16:19 GMT
EXPOSE 443/udp
# Wed, 11 Nov 2026 22:16:19 GMT
EXPOSE 2019
# Wed, 11 Nov 2026 22:16:25 GMT
RUN caddy version
# Wed, 11 Nov 2026 22:16:26 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd5ae99c0fb6e4764ec90d45aff46ebe7e1ee0a121f0a99525b9520a53c5103`  
		Last Modified: Tue, 10 Nov 2026 19:02:01 GMT  
		Size: 757.3 MB (757328679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e4ef424dfaba895bf0c6c2b9e302375628dafa983e3fd708e8b0acb5b57e943`  
		Last Modified: Wed, 11 Nov 2026 21:52:23 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0099852d900622af4dd04dfa32cd2dd40661fc78ef5da6f94c6362957da06fae`  
		Last Modified: Wed, 11 Nov 2026 22:16:35 GMT  
		Size: 353.2 KB (353210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d375c71e3310760ba4fce05ee5aabc7522ff050e41f96a1987f04b0d1a3fbaed`  
		Last Modified: Wed, 11 Nov 2026 22:16:35 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ef955dc576ccc97648f4193f6e7e297730486ecac445e34ecf7074b89411e0`  
		Last Modified: Wed, 11 Nov 2026 22:16:37 GMT  
		Size: 18.8 MB (18841013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b830db952bc5fff622210bc6094eb3a9a077d962a5aa5e332b73c291450671`  
		Last Modified: Wed, 11 Nov 2026 22:16:34 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44f4351ba73bde9b52ec01d1238b3070d5b85af2cabaef4f6651c0a78247903`  
		Last Modified: Wed, 11 Nov 2026 22:16:33 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f601f4d81d2b11654867ada476cd3fa23b1491a0898e6128fa003a59d8e138a9`  
		Last Modified: Wed, 11 Nov 2026 22:16:33 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c0e935dc075e2937931e021aea2fedc16b32c38ef8c8568970b9a01a823d43`  
		Last Modified: Wed, 11 Nov 2026 22:16:33 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ec4b84348990ab65c97195131b7c222b23f7cb675b9179734ac871846dadef`  
		Last Modified: Wed, 11 Nov 2026 22:16:33 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aafe94176356ee4fe93f10364878acc71a3ab30c9edd0c46d1069ba53379ef5`  
		Last Modified: Wed, 11 Nov 2026 22:16:33 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2527e3cfa4146047b72bb229b44a182736523f4a5d7e97fd0b737679cb2b40e`  
		Last Modified: Wed, 11 Nov 2026 22:16:31 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c44498a3db57a5a6183037108fabe93b3d75b3c26d848e3c13ad2f0ef1db91`  
		Last Modified: Wed, 11 Nov 2026 22:16:31 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af2d120077694dff5d51ab555e4a3a078f38ca0515bb799b94f9257131aa6f5`  
		Last Modified: Wed, 11 Nov 2026 22:16:31 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8baed4704fa4529d0859aa501ad31bbb6dd3c51b372e16bb028244191c63da46`  
		Last Modified: Wed, 11 Nov 2026 22:16:31 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9861d6a1a50f17e34a52fe98e16b577dc2b0d936612912c48ae6a37a95ec3f5`  
		Last Modified: Wed, 11 Nov 2026 22:16:31 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5f980ff8a34e650664dedab84235c76035f4212bf95d2fe16d4a189044526f`  
		Last Modified: Wed, 11 Nov 2026 22:16:30 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdfd190876524834a02f7aca164df99e844b52e60c0c138c135d85811ae0b251`  
		Last Modified: Wed, 11 Nov 2026 22:16:30 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983818d678dff02df61b5217a5dda3dbf8d74a04a14e1b3aa70ec98b1805115e`  
		Last Modified: Wed, 11 Nov 2026 22:16:30 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc7708cfd862067c016de63b0a354f06768752c76572e86f021661ce03a9564`  
		Last Modified: Wed, 11 Nov 2026 22:16:30 GMT  
		Size: 342.8 KB (342828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98f4b5f42197e27fd7a3dd1926b12d80eb1e460f37b2ffb58eab503bf772820`  
		Last Modified: Wed, 11 Nov 2026 22:16:30 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
