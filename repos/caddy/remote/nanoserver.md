## `caddy:nanoserver`

```console
$ docker pull caddy@sha256:f16b98cfcfcc3ea98978f44a066de0f72dcec11f6abf30b3d35bd96c58ee4a9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `caddy:nanoserver` - windows version 10.0.26100.33438; amd64

```console
$ docker pull caddy@sha256:449ef4f4a10f14acc3014dcd78d7e428a40cd148aa614c72eaa883ec86a7009b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.8 MB (215839214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ea8280c14794e8300a7e07584c7aa0deac9a2ff81f36b7470d2e706837ad45b`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Wed, 09 Sep 2026 23:25:45 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Wed, 09 Sep 2026 23:25:51 GMT
RUN cmd /S /C #(nop) COPY file:7d2f419889d1c745e8d01a18ec688d43a6c8f6363f61c1964c7e88fd70b1b987 in c:\caddy.exe 
# Wed, 09 Sep 2026 23:25:53 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Wed, 09 Sep 2026 23:25:56 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Wed, 09 Sep 2026 23:25:56 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Wed, 09 Sep 2026 23:25:57 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Wed, 09 Sep 2026 23:25:57 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.4
# Wed, 09 Sep 2026 23:25:58 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Wed, 09 Sep 2026 23:25:58 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 09 Sep 2026 23:25:59 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 09 Sep 2026 23:26:00 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 09 Sep 2026 23:26:00 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 09 Sep 2026 23:26:01 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 09 Sep 2026 23:26:01 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 09 Sep 2026 23:26:02 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 09 Sep 2026 23:26:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Wed, 09 Sep 2026 23:26:03 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Wed, 09 Sep 2026 23:26:04 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Wed, 09 Sep 2026 23:26:06 GMT
RUN caddy version
# Wed, 09 Sep 2026 23:26:07 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958874d9b524f1d660df253342abe92320ec5f641e5455d0e973345dd1076d0c`  
		Last Modified: Wed, 09 Sep 2026 23:26:16 GMT  
		Size: 72.1 KB (72088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30178149ec87a41df0746d4cd1f6a5dccade7923473a4f76fee40de37f740281`  
		Last Modified: Wed, 09 Sep 2026 23:26:18 GMT  
		Size: 17.6 MB (17619906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90f6bfa5e344f3928fc2904368dc6124a633bca72f65098c3d94d226cb3dc91e`  
		Last Modified: Wed, 09 Sep 2026 23:26:16 GMT  
		Size: 257.2 KB (257212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c264b79183ba7649ac2f6541eb1ea03d76d6585a95f0f732a2dd56fc999b2efa`  
		Last Modified: Wed, 09 Sep 2026 23:26:16 GMT  
		Size: 111.1 KB (111095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f833d82941763431cf1f2e9daf96df78c7c124dac5b59382829d640f030311de`  
		Last Modified: Wed, 09 Sep 2026 23:26:16 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b018fb3a5e748474f894e40886b16fe1b2fee35ba5aa350d7698a3404c7b846`  
		Last Modified: Wed, 09 Sep 2026 23:26:14 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785e5a5a9bd7a01112ad0f062dbf827a88d04f353baff40b13823a33ae3ee416`  
		Last Modified: Wed, 09 Sep 2026 23:26:14 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:038ddb3097782fe1677c011079ac96e15af721cbec35f2e5677f9ec0e9770b9d`  
		Last Modified: Wed, 09 Sep 2026 23:26:14 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d34c4dc42a67b9736dfd4cb1c5cd28de1a828289e89bc25e952261971b6b11f`  
		Last Modified: Wed, 09 Sep 2026 23:26:14 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676b90e9cfcac4382aec6d80ecf1cd3ef7889b65775a9ce38cbf778adbf179d3`  
		Last Modified: Wed, 09 Sep 2026 23:26:14 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f74954d8eab6de5aba480327d30b93a62ebfac7613dc6559c9e44f5fa34997`  
		Last Modified: Wed, 09 Sep 2026 23:26:13 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936b38d7cdd77907ab36f7bbd76d4613f902fb09597d572b4eaa2819900afbe9`  
		Last Modified: Wed, 09 Sep 2026 23:26:13 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e774aa2ad4fa37606c444cd34ed82d158803630d46d25126b55cbb5b5e3b4c2c`  
		Last Modified: Wed, 09 Sep 2026 23:26:12 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875ae2e98d22fd03f31c0ed5fd9477d765b7894875c04137100f1f3eba7864c4`  
		Last Modified: Wed, 09 Sep 2026 23:26:12 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e77928f929b50a3eabf9cf9b2a86714fba7cd263d930dad9289e477f415ec0f`  
		Last Modified: Wed, 09 Sep 2026 23:26:13 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332dadec1498e091bdd8f950e196321c756fac04b788bec8543be89f0cd3d40f`  
		Last Modified: Wed, 09 Sep 2026 23:26:11 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:625e2c4ac434f4cf266c90e7147e8d7ca9a2156758c44fd9e768c32fadfb4e29`  
		Last Modified: Wed, 09 Sep 2026 23:26:11 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb64616ec555bc151a33306898d42c5f2bdbbfeb65bc2bbe5db18fe66bd1cde`  
		Last Modified: Wed, 09 Sep 2026 23:26:11 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4423903ff806a3f2ef4ed7ffe0fc5e0aeb6423714c9a542491f31b5158ef8bb5`  
		Last Modified: Wed, 09 Sep 2026 23:26:11 GMT  
		Size: 112.9 KB (112891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535d10acf35c9455393dc06a35819e4f9fd3153076611951c64e032eb99d56f3`  
		Last Modified: Wed, 09 Sep 2026 23:26:11 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull caddy@sha256:5da8b69e6a1bcce5e872db773534a21370e284bd611f8ac5ae859336410517d8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.8 MB (142817039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c40b1fc20a60cc17d15eaa79dcac760fd770b7258c794a701465d62fa625dda`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:27:11 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Wed, 09 Sep 2026 23:27:17 GMT
RUN cmd /S /C #(nop) COPY file:7d2f419889d1c745e8d01a18ec688d43a6c8f6363f61c1964c7e88fd70b1b987 in c:\caddy.exe 
# Wed, 09 Sep 2026 23:27:21 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Wed, 09 Sep 2026 23:27:24 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Wed, 09 Sep 2026 23:27:24 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Wed, 09 Sep 2026 23:27:25 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Wed, 09 Sep 2026 23:27:25 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.4
# Wed, 09 Sep 2026 23:27:25 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Wed, 09 Sep 2026 23:27:26 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 09 Sep 2026 23:27:27 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 09 Sep 2026 23:27:27 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 09 Sep 2026 23:27:28 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 09 Sep 2026 23:27:28 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 09 Sep 2026 23:27:29 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 09 Sep 2026 23:27:30 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 09 Sep 2026 23:27:30 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Wed, 09 Sep 2026 23:27:31 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Wed, 09 Sep 2026 23:27:31 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Wed, 09 Sep 2026 23:27:34 GMT
RUN caddy version
# Wed, 09 Sep 2026 23:27:35 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a2cf259979b3a62c4f8ba09d8805627e1dd9eea37e5ad71b5844e0ad167351c`  
		Last Modified: Wed, 09 Sep 2026 23:27:44 GMT  
		Size: 71.1 KB (71117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8729ec5f2a6e619699013ab486e34091cb172a5848f5477e593b4e09d9baf8b`  
		Last Modified: Wed, 09 Sep 2026 23:27:46 GMT  
		Size: 17.6 MB (17619939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf154a8e99c04c5abd495497c6d0141e2da87ad4388479847bb40fc823d2f180`  
		Last Modified: Wed, 09 Sep 2026 23:27:44 GMT  
		Size: 252.8 KB (252850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5486e59f47a83f2ef01891e11e77253d1c8acfb7e79ff569a80d2ba98c88231b`  
		Last Modified: Wed, 09 Sep 2026 23:27:44 GMT  
		Size: 109.7 KB (109744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e6230b2c03c962a88906facb2338e9403a27307745304e12ee855b0a7c1ebd`  
		Last Modified: Wed, 09 Sep 2026 23:27:44 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924f96c58139ad9f87874ddedbe9d86aaabb96e5d888a70b24d30e3087f43e60`  
		Last Modified: Wed, 09 Sep 2026 23:27:42 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34d9647e05839354a32262538d347f3a930a717b699535de320282b862c42bd`  
		Last Modified: Wed, 09 Sep 2026 23:27:43 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc33dd9d16b60bdc60e378141b7357f62d8a433d58d5afe4bbc06bcae9772a2e`  
		Last Modified: Wed, 09 Sep 2026 23:27:42 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2367451d3ac46963e2cb2ca00da32859a53a017da75ba61e7d2eff75776b46`  
		Last Modified: Wed, 09 Sep 2026 23:27:42 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5fca0a61e15ea72189081a7eda0add9cc2ae11f908bdb518155eb84f85bd252`  
		Last Modified: Wed, 09 Sep 2026 23:27:42 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569ec035e0498453a1850c494249fd2eb429cc332651a6015a1c01cfd1529171`  
		Last Modified: Wed, 09 Sep 2026 23:27:41 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a510df4fc4dfdeff1c75f522c34b568e049631646c0d3f4e8da4419eb63385`  
		Last Modified: Wed, 09 Sep 2026 23:27:41 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a2d2f6b4c3b9e5fbc5e69577ece60e00ad45e323eb4ce5fcbc4e79801ae768b`  
		Last Modified: Wed, 09 Sep 2026 23:27:41 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2888733839b922141f2515eea89895c48a377b8765ce8c455e7582be76d26b2e`  
		Last Modified: Wed, 09 Sep 2026 23:27:41 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02b52c6fbb535d36baf09e9db223a491293943bd8a2b2218ec5d310879d98bf`  
		Last Modified: Wed, 09 Sep 2026 23:27:41 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e3f8cf7d6d0b4d99aee5c1d521ea8356ba49f9c83e14773a1c8f1393fc5ec4`  
		Last Modified: Wed, 09 Sep 2026 23:27:39 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5661f0cdea58585e7d357b4ba97fd463c874a958c269741eff3f5566e1295b`  
		Last Modified: Wed, 09 Sep 2026 23:27:39 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8875bf96c6580af437841d371c773af9622f2a15594915beddd6c2d0d897fcf6`  
		Last Modified: Wed, 09 Sep 2026 23:27:39 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4691ca84ef4c5040973219a4c057bfb61d19530417ab3bcc8ecfffb563bdc04d`  
		Last Modified: Wed, 09 Sep 2026 23:27:39 GMT  
		Size: 110.1 KB (110078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b71e8fce70dde131efb84d34f0a3a5354671cd53fb4a4dbf21e27d7b11746b3`  
		Last Modified: Wed, 09 Sep 2026 23:27:39 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
