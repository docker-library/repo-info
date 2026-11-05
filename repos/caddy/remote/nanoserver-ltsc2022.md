## `caddy:nanoserver-ltsc2022`

```console
$ docker pull caddy@sha256:d2d8348d9c32aa61453875bf150b1dafce34d416c9195267d80f4a6e9eaed07b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `caddy:nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:56b01f793a8128ee887d3e64de342dd3f2000a638ac1b4e7db29f2eb4bcb6284
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (145040802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d6191e2fc28e32c185f501fbd9572ebcf4e2a14ad065271c3337800994d629c`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Thu, 05 Nov 2026 19:10:13 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Thu, 05 Nov 2026 19:10:14 GMT
RUN cmd /S /C #(nop) COPY file:f6fd9f7c8bd53ad2dea712d2b3468beaa8adaf6a9b8689f2f467c74c0f14078e in c:\caddy.exe 
# Thu, 05 Nov 2026 19:10:25 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Thu, 05 Nov 2026 19:10:29 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Thu, 05 Nov 2026 19:10:31 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 19:10:32 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 19:10:33 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 19:10:36 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 19:10:37 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 19:10:38 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 19:10:39 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 19:10:40 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 19:10:42 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 19:10:42 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 19:10:43 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Thu, 05 Nov 2026 19:10:44 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Thu, 05 Nov 2026 19:10:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Thu, 05 Nov 2026 19:10:47 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Thu, 05 Nov 2026 19:10:53 GMT
RUN caddy version
# Thu, 05 Nov 2026 19:10:54 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e1d06ea3837094c8761c7a40f502ad3ad9c213d4b486704f0a133be3d23f36`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 65.7 KB (65722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02d611403e37ecc02486a51183dcf106fb194e74b539f53bc1a00f1bbef02d7`  
		Last Modified: Thu, 05 Nov 2026 19:11:05 GMT  
		Size: 18.5 MB (18498202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d1a17f3d31316c91205b5a519e0fc13c47939d3cc80aae106bd10649a823c04`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 290.2 KB (290212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3248fc9eb8b3c5ca0a8c7d6e92613d1df59864d1fd999fd6918e7245f189c392`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 123.2 KB (123168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40617a87b67b23ff7cfbe9de77177d9d3c6cb4284f1e39fe4a10f6171ad1ac4c`  
		Last Modified: Thu, 05 Nov 2026 19:11:03 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e53fdde1ce4c324048149b5a456caab36f2220fb554c3c224cb29e9e3fa33b`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.1 KB (1087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db93c253cdba976c39879edf23f24ea82aa83905b876504043e6c3cc9de39beb`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e8965ee7d0cd826aaf2b9bf9879787f2110e2e2dab8f1fedcc0e9a1a4908b3f`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4c29573c1901e5ea02b5f9e28e88e7a22b70c0acf84c41f4df6c1e795786c1`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2452f6722465dd773bf66b1cd607629e8b0f1fa73e4fc9fc7850e361c34a6553`  
		Last Modified: Thu, 05 Nov 2026 19:11:02 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffdfaa4722c6a480ef02a2b6d8b2febc1a780a6a9a5557bbb6d3ffeeddd3ea4`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1597c7620d13ea57db6902612b6262261a7472a43e6b51a415418f0948523908`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.1 KB (1079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fca5741b400358f371bb2758d52b63990bf9fe6613de999ccccd67b9bae200`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad096f0eeb95189cb63225d7b5873ab5d1e783703e639614a5aad4b23b880f1c`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c0adb7da06b7e605d03e094aad1033bc43abb83e9b59ecbcd8168abf0baa00`  
		Last Modified: Thu, 05 Nov 2026 19:11:00 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be8fe49479fc270257c4ca6cd3ce110e48008b6c06b1238b4c37fee4a39bf7b1`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa9a4eb0fa03b7c97b076bbccb045c37ba876eb6562c74449bb13fd5c309eb9`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b10f275be5ed1abde3b084de91ae3a4a44c3334c0d8434366c30c953ae63460d`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fba564c3db312cd1674228848c185b36885e03927345eb02c84fee49d9bd6d2`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 121.0 KB (120982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffc99724b66359e0703518bd1f7fa181f2563be2605953b7c7bc6641b51624d1`  
		Last Modified: Thu, 05 Nov 2026 19:10:58 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
