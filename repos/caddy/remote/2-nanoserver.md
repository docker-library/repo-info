## `caddy:2-nanoserver`

```console
$ docker pull caddy@sha256:34a2c296cdc0cf4c3fe41dae81f522500258c236719fd0677b1d2e218db92922
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `caddy:2-nanoserver` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:62d36a49692c03a5909b9410d08551833464a88b933edcf4158582197ef1561e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219022802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d5d522bf4fc78749a7af5891c162869ff9468c45d1bbf479c094b024f3b972c`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Sat, 24 Oct 2026 23:26:15 GMT
RUN Apply image 10.0.26100.33674
# Wed, 04 Nov 2026 19:15:06 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Wed, 04 Nov 2026 19:15:24 GMT
RUN cmd /S /C #(nop) COPY file:933da376c15df15f3e5e6574a60098d4054c1a85126895869c114b59a016fb7e in c:\caddy.exe 
# Wed, 04 Nov 2026 19:15:31 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Wed, 04 Nov 2026 19:15:37 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Wed, 04 Nov 2026 19:15:37 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Wed, 04 Nov 2026 19:15:38 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Wed, 04 Nov 2026 19:15:39 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 19:15:40 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 19:15:41 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 19:15:43 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 19:15:44 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 19:15:45 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 19:15:46 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 19:15:46 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 19:15:47 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 04 Nov 2026 19:15:48 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Wed, 04 Nov 2026 19:15:49 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Wed, 04 Nov 2026 19:15:50 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Wed, 04 Nov 2026 19:16:03 GMT
RUN caddy version
# Wed, 04 Nov 2026 19:16:03 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:52fd6732d0ca195d430cd9cf788e7b10823a73e2eda296aa1c8d60d4e2ec17a7`  
		Last Modified: Tue, 27 Oct 2026 01:09:42 GMT  
		Size: 200.0 MB (199959116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02adef402d2241b723cdeb01d76718a9f6a322614293f28c5033866623a914cc`  
		Last Modified: Wed, 04 Nov 2026 19:16:14 GMT  
		Size: 70.3 KB (70274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26f1fc03a63a289e9463b9458184d935bb296d2ba3ce52eeb7971b79d99d071`  
		Last Modified: Wed, 04 Nov 2026 19:16:16 GMT  
		Size: 18.5 MB (18496017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac81a67a6f2e8fb32e2db41bf3a2ef4b92cb0e8fb94a62ede41a2cc1bec2de2b`  
		Last Modified: Wed, 04 Nov 2026 19:16:14 GMT  
		Size: 278.7 KB (278697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:540efbdb565decce4e55d68fd380079ebe511c0ab22855be3122606a468da60e`  
		Last Modified: Wed, 04 Nov 2026 19:16:14 GMT  
		Size: 101.8 KB (101760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa625982b335f1d32a6d2468feca965c8b035e6a19eaffd5a7935e68d467326`  
		Last Modified: Wed, 04 Nov 2026 19:16:13 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4947233a26a3c542ef7ad5ace3086d37fe6341ead3cb738ba6a61a42574cb441`  
		Last Modified: Wed, 04 Nov 2026 19:16:12 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae4676dde5d192f20a195ef4cdbac47e5ae6d0062d4d93584965fa17881df6e`  
		Last Modified: Wed, 04 Nov 2026 19:16:12 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197765bdce072e5d4949af25c1ceb8dd1ffa2343c95ec37ac211347982b48f9d`  
		Last Modified: Wed, 04 Nov 2026 19:16:12 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d6b77f153b12a3465a1ab0edad5f15cb2a8f7b17014878c8ef29d3591539f8`  
		Last Modified: Wed, 04 Nov 2026 19:16:12 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de0da345e82f592a401b6eb19c5d4107dd07d6392c5a23634e3ce1c9bd1b45ea`  
		Last Modified: Wed, 04 Nov 2026 19:16:11 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00cb9a640713d3e97731fb8688c687d2211fdef1db2223e8f856ac7b7e38064`  
		Last Modified: Wed, 04 Nov 2026 19:16:10 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b97bbab8ee9f27f18293f8bff969aa0f8377eb90c01b9b457ee6bdb8272882b6`  
		Last Modified: Wed, 04 Nov 2026 19:16:10 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab76363142a51af8f8614b599156a95b1f1bc17e36b4fa7ba6f62c7e48b3a608`  
		Last Modified: Wed, 04 Nov 2026 19:16:10 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989773ddc031a024e5a5e9c8883d0716ed270e374b1c4803189cd591db24e8d4`  
		Last Modified: Wed, 04 Nov 2026 19:16:10 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72d5a5c110711ed5707995e23ab500ae6aaa0a699649c749bda48fa1d0f588d`  
		Last Modified: Wed, 04 Nov 2026 19:16:10 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8323b11af68ed6e042d13d53f77f071b3a261357eab282c09d1cfab4bba7097a`  
		Last Modified: Wed, 04 Nov 2026 19:16:08 GMT  
		Size: 1.0 KB (1033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633729ebd20c7c1510bca8d19c742140cef3cc806da89146be67e86e688dd40c`  
		Last Modified: Wed, 04 Nov 2026 19:16:08 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e884eee41b05186dedf53bd3e996eda61783be7ca80a93047baf226ccf8bf0d3`  
		Last Modified: Wed, 04 Nov 2026 19:16:08 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d709e5d6418df346845689f4cda1124777886e6ccb8762dd5ce00e176b70f6c`  
		Last Modified: Wed, 04 Nov 2026 19:16:08 GMT  
		Size: 101.4 KB (101420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492d3e297233f01a58640d2aa336317cbb152c619b23faf090a3609a0aa726ba`  
		Last Modified: Wed, 04 Nov 2026 19:16:08 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:2-nanoserver` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:141790f36e017832281fa857caf3f2bb32a5336ee3c0597861c8cf98c4c069e1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (145043662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8ac2391188ccc0c08e1b6d82665c050d46ee108ce165c906a1e546f833d5edc`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Wed, 04 Nov 2026 19:15:22 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Wed, 04 Nov 2026 19:15:33 GMT
RUN cmd /S /C #(nop) COPY file:933da376c15df15f3e5e6574a60098d4054c1a85126895869c114b59a016fb7e in c:\caddy.exe 
# Wed, 04 Nov 2026 19:15:44 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Wed, 04 Nov 2026 19:15:49 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Wed, 04 Nov 2026 19:15:50 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Wed, 04 Nov 2026 19:15:51 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Wed, 04 Nov 2026 19:15:53 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.8
# Wed, 04 Nov 2026 19:15:55 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Wed, 04 Nov 2026 19:15:56 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 04 Nov 2026 19:15:57 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 04 Nov 2026 19:15:59 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 04 Nov 2026 19:16:00 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 04 Nov 2026 19:16:01 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 19:16:03 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 04 Nov 2026 19:16:05 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 04 Nov 2026 19:16:06 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Wed, 04 Nov 2026 19:16:07 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Wed, 04 Nov 2026 19:16:07 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Wed, 04 Nov 2026 19:16:21 GMT
RUN caddy version
# Wed, 04 Nov 2026 19:16:22 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9f98eaa0f7cc842744dde6cdfa3bbd900c696c1b312ecb485f8909769f61514`  
		Last Modified: Wed, 04 Nov 2026 19:16:32 GMT  
		Size: 71.0 KB (70955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b7acdcf6619b96c798b1a4ad0678da69e946acaa7e58bb1a69e9f37ede14c2`  
		Last Modified: Wed, 04 Nov 2026 19:16:34 GMT  
		Size: 18.5 MB (18496051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e830093b3a3f3faab67aeeac84bd998853ddaec2d6cfcd2c370d27bf8665d7`  
		Last Modified: Wed, 04 Nov 2026 19:16:32 GMT  
		Size: 294.9 KB (294935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04df8ec72d11ef7e6472f8b27f382a1dc3fd356247d4bfa869acbcb3e163bf3`  
		Last Modified: Wed, 04 Nov 2026 19:16:31 GMT  
		Size: 119.2 KB (119202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3cfce4028690a001a4d40e292db18b5fc9be512527ca220849d0673d2ca96c1`  
		Last Modified: Wed, 04 Nov 2026 19:16:31 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7762412a91751016e27c8e46c134af5db35c8964bd3524a04a8ae620d779b26d`  
		Last Modified: Wed, 04 Nov 2026 19:16:30 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a4964c2c23fea287d4b44fec1c6768c3e04f96ffb8452830f3bff751b58a04`  
		Last Modified: Wed, 04 Nov 2026 19:16:30 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f48c573dbc0c7f3ab7b81d5dd32e027e54229fe701ffe085a643f4979e71de3d`  
		Last Modified: Wed, 04 Nov 2026 19:16:30 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278508bfe2ecc6365d0bfc0177554176ebf060efb013ffda663071f2018209b6`  
		Last Modified: Wed, 04 Nov 2026 19:16:30 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a83830eca4c616acb3dda355d52ade5a1def13fc81c93d51552650280ddb440`  
		Last Modified: Wed, 04 Nov 2026 19:16:30 GMT  
		Size: 1.1 KB (1060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59902b2742653801a506243669267e4d79e07c5cce33069b22e044fb5483f08`  
		Last Modified: Wed, 04 Nov 2026 19:16:28 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45dd00f5377f159a38f98c8f7eac207961f2d6784b4f4cb64d6bf825d7c04062`  
		Last Modified: Wed, 04 Nov 2026 19:16:28 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c43e6f56dfce22e60188d26f7e0e0cb73090247a794ab88ea9298e81c3353d`  
		Last Modified: Wed, 04 Nov 2026 19:16:28 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0bf1a2d627198574fa03a1662c30cc2eed1bf9b34718048b37a787d47e45ee`  
		Last Modified: Wed, 04 Nov 2026 19:16:28 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6307a6760d7e0fbd2925c65f9413bb95d249e47d5079dfb611d2ecafd8012175`  
		Last Modified: Wed, 04 Nov 2026 19:16:28 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffca690af03cd09737261b16446083ed5802311984641030858164f033a17997`  
		Last Modified: Wed, 04 Nov 2026 19:16:26 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17422327201be76569fef49ed09199e24188c7a048da500af4641ffb003bbc1a`  
		Last Modified: Wed, 04 Nov 2026 19:16:26 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0dddeb972be67cdd8a5c23f485af2481cfdb3b6e7eadc976cfaf9512165bdc`  
		Last Modified: Wed, 04 Nov 2026 19:16:26 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9850c6be157c10dfa9525a6da439ddc09cc6b21ded3ed4dbf74de7e2ad1f9391`  
		Last Modified: Wed, 04 Nov 2026 19:16:26 GMT  
		Size: 119.9 KB (119901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df0ee1dd8bd6b0fec1800e1ef36f81969bd29ad39d5648f81fb8a734689c45a`  
		Last Modified: Wed, 04 Nov 2026 19:16:26 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
