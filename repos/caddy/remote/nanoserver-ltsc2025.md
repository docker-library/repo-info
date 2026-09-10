## `caddy:nanoserver-ltsc2025`

```console
$ docker pull caddy@sha256:6697bf6ddb2c8e367409b91d96b34599e6612df60d9eee3e3f126a9baba65269
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `caddy:nanoserver-ltsc2025` - windows version 10.0.26100.33438; amd64

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
