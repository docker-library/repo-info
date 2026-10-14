## `caddy:2-nanoserver-ltsc2022`

```console
$ docker pull caddy@sha256:39c87e426899944d3e4c20a36dd6267e52a203e7f56202240937dbadb848be8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `caddy:2-nanoserver-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull caddy@sha256:15d3764a860013dd5490f35093068ad843a450d8ad96c965baff721c98c5ff3b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (145000673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5b2d1c979a2f5f0c2af86bcd14280eeb941b45b15557f3d2308b0a12dd0590c`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:28:30 GMT
RUN cmd /S /C mkdir c:\config && mkdir c:\data && mkdir c:\etc\caddy && mkdir c:\usr\share\caddy
# Wed, 14 Oct 2026 00:28:32 GMT
RUN cmd /S /C #(nop) COPY file:2fab63207e84eabfeab5300594bf0a3c4d7447a47dd347816cf69fd217a97a57 in c:\caddy.exe 
# Wed, 14 Oct 2026 00:28:36 GMT
RUN cmd /S /C curl -fsSL -o c:\etc\caddy\Caddyfile https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile
# Wed, 14 Oct 2026 00:28:39 GMT
RUN cmd /S /C curl -fsSL -o c:\usr\share\caddy\index.html https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html
# Wed, 14 Oct 2026 00:28:40 GMT
RUN cmd /S /C #(nop)  ENV XDG_CONFIG_HOME=c:/config
# Wed, 14 Oct 2026 00:28:40 GMT
RUN cmd /S /C #(nop)  ENV XDG_DATA_HOME=c:/data
# Wed, 14 Oct 2026 00:28:41 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.version=v2.11.7
# Wed, 14 Oct 2026 00:28:41 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.title=Caddy
# Wed, 14 Oct 2026 00:28:42 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Wed, 14 Oct 2026 00:28:42 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.url=https://caddyserver.com
# Wed, 14 Oct 2026 00:28:43 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Wed, 14 Oct 2026 00:28:43 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Light Code Labs
# Wed, 14 Oct 2026 00:28:44 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 14 Oct 2026 00:28:44 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Wed, 14 Oct 2026 00:28:44 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 14 Oct 2026 00:28:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 443
# Wed, 14 Oct 2026 00:28:45 GMT
RUN cmd /S /C #(nop)  EXPOSE 443/udp
# Wed, 14 Oct 2026 00:28:46 GMT
RUN cmd /S /C #(nop)  EXPOSE 2019
# Wed, 14 Oct 2026 00:28:49 GMT
RUN caddy version
# Wed, 14 Oct 2026 00:28:49 GMT
RUN cmd /S /C #(nop)  CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e35d45189553937723be803a48b085085e8ad31e3c0e69927c61c059c48bbd`  
		Last Modified: Wed, 14 Oct 2026 00:28:59 GMT  
		Size: 75.3 KB (75335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1683d3a8f68bf099395d9d79d2f2ee470f9981c72aab513270f319fc94a893c`  
		Last Modified: Wed, 14 Oct 2026 00:29:01 GMT  
		Size: 18.6 MB (18597175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b0a87525d8cc59dabd69b1c832b767c35fd69b28c9a32f6c36aa04709622d2d`  
		Last Modified: Wed, 14 Oct 2026 00:28:59 GMT  
		Size: 273.4 KB (273412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dab769c9ae6557156d808385bd13c43c487a9b576eaaa9a298387db04c19836`  
		Last Modified: Wed, 14 Oct 2026 00:28:58 GMT  
		Size: 121.7 KB (121739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2944bfdc9fdf008d840a33418468e3c2fe2218b2610ac427c1bb281c83ff847`  
		Last Modified: Wed, 14 Oct 2026 00:28:58 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5c175f9606941616c8f9c0da8701285b93784ce9c65eaa368343838b46c8a0`  
		Last Modified: Wed, 14 Oct 2026 00:28:57 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f463e691d848c208838fade300e420d4586e0b58cf6f5db5efad2e5e2961879`  
		Last Modified: Wed, 14 Oct 2026 00:28:57 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4f561d88201e9026f4c40ce16e41dcb95ae63342dbdea635cd120d058c09d38`  
		Last Modified: Wed, 14 Oct 2026 00:28:57 GMT  
		Size: 1.1 KB (1082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d55adb81df97c81956e5ba894986d0c822f2b885adac2e5e451a7a56abc8033`  
		Last Modified: Wed, 14 Oct 2026 00:28:57 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23686e172a63c3d71c49c5754ff5627e79bafea2c85441c3dbeac88e87f52687`  
		Last Modified: Wed, 14 Oct 2026 00:28:57 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844a4fbdc278e844adbb12cae60e79adab67a42bae0f5ed936f24efa40a82c80`  
		Last Modified: Wed, 14 Oct 2026 00:28:55 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b1925c8d8008f8731f83905d8b054e84ec41e1ae0350307f99cdde16b15948`  
		Last Modified: Wed, 14 Oct 2026 00:28:55 GMT  
		Size: 1.1 KB (1083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a170cd9adb7ba4a36305e86171db9ee60864ef9c93f7d4312086318d4a2bdb13`  
		Last Modified: Wed, 14 Oct 2026 00:28:55 GMT  
		Size: 1.1 KB (1081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0e5ad368f576f04572a2070e61a5390405965625652d1aa57b5702d0cb9ab77`  
		Last Modified: Wed, 14 Oct 2026 00:28:55 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd4860ca4d128a867d6a9137a79459b0fdbcb5b2c1018a7527370ef2bcbf671e`  
		Last Modified: Wed, 14 Oct 2026 00:28:55 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8dd8534ee742a5c34d0b734bb1212558038810ae80e118d08a841d11757ee6`  
		Last Modified: Wed, 14 Oct 2026 00:28:53 GMT  
		Size: 1.1 KB (1074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2083214ea6dc375e27c90bfde8c5b13f7f394de8c64579fa2c567f841edb743`  
		Last Modified: Wed, 14 Oct 2026 00:28:53 GMT  
		Size: 1.1 KB (1085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16988325c110262a35aa04d158fc92ee1f4360faff8575279149ef744fa835f9`  
		Last Modified: Wed, 14 Oct 2026 00:28:53 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c444117ea5bd73f64c22a6c2903c820f1a4f2c96622781bfb983bf9573b980`  
		Last Modified: Wed, 14 Oct 2026 00:28:54 GMT  
		Size: 121.0 KB (121001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06281e078a1529e3d57cf3c4822d9f9c470c7c4ca827e6010dc64e5df5969e35`  
		Last Modified: Wed, 14 Oct 2026 00:28:53 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
