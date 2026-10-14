## `caddy:windowsservercore`

```console
$ docker pull caddy@sha256:8f4da633b50e201c3bd73a7efe9cf55fce5befc3d54901a47dfe678fff765e0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `caddy:windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull caddy@sha256:5bd0af09931218efa361aaa37b1a1e2fdd038c671e5de0903f1e3bb2542474c0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411687248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfd4ab77e2a0f7a7cca12aa714b9c0635724aa1a18dad54854e6c23810c3e150`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:14:19 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Tue, 13 Oct 2026 23:14:20 GMT
ENV CADDY_VERSION=v2.11.7
# Tue, 13 Oct 2026 23:14:31 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.7/caddy_2.11.7_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('c308154504e53755958ffc62d8a2657ab17eefd6dd25c45dbb2c3d93d29519971f77ca652f7d0f2bcb7f980b9ba3822478865e29969d0272d7613550a43152b1')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Tue, 13 Oct 2026 23:14:32 GMT
ENV XDG_CONFIG_HOME=c:/config
# Tue, 13 Oct 2026 23:14:32 GMT
ENV XDG_DATA_HOME=c:/data
# Tue, 13 Oct 2026 23:14:33 GMT
LABEL org.opencontainers.image.version=v2.11.7
# Tue, 13 Oct 2026 23:14:33 GMT
LABEL org.opencontainers.image.title=Caddy
# Tue, 13 Oct 2026 23:14:34 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Tue, 13 Oct 2026 23:14:35 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Tue, 13 Oct 2026 23:14:36 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Tue, 13 Oct 2026 23:14:38 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Tue, 13 Oct 2026 23:14:38 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Tue, 13 Oct 2026 23:14:39 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Tue, 13 Oct 2026 23:14:40 GMT
EXPOSE 80
# Tue, 13 Oct 2026 23:14:41 GMT
EXPOSE 443
# Tue, 13 Oct 2026 23:14:42 GMT
EXPOSE 443/udp
# Tue, 13 Oct 2026 23:14:43 GMT
EXPOSE 2019
# Tue, 13 Oct 2026 23:14:48 GMT
RUN caddy version
# Tue, 13 Oct 2026 23:14:49 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c59d009aba2f03c724440d870648ea3e3b174ad82fcbaf95d75fb47bbafe9d`  
		Last Modified: Tue, 13 Oct 2026 23:03:09 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8832bcc17cb28e95ddfccf2c4220e9387ed7cd5770982b7433d4ac244ff146`  
		Last Modified: Tue, 13 Oct 2026 23:14:59 GMT  
		Size: 368.8 KB (368835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f804411435b2f33031336f16f0c40190042f5d4efd9a932245212fd628ed7`  
		Last Modified: Tue, 13 Oct 2026 23:14:59 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af823c960a3726f2107a4afe9e60a6592c75f25b22ae44499d4e57c1e782477b`  
		Last Modified: Tue, 13 Oct 2026 23:15:02 GMT  
		Size: 19.0 MB (18952058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa2578a37acd8f066e5ce4cac455144d21f9a860c90f7ed3169c59c12232922`  
		Last Modified: Tue, 13 Oct 2026 23:14:58 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6138afe37b19cef3e9857d1204d0b5a8e3e9bc6c8dca7c7cd9cf7bd8f70c8bfc`  
		Last Modified: Tue, 13 Oct 2026 23:14:57 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cd7e89795516dba7eb720777d598999c5c94ecaa6745c5cceddf58561c310a`  
		Last Modified: Tue, 13 Oct 2026 23:14:57 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f91c62b61dbf394bacd2ceb624b64475d2d5a20036b82163f0b275ffa54ab98`  
		Last Modified: Tue, 13 Oct 2026 23:14:57 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c74592add670ba71f55a919fb8cfae6875f7d0aab7f20a54b27453e8ca3865`  
		Last Modified: Tue, 13 Oct 2026 23:14:57 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5434488013f57e390b26abd1faad5e72ee5417742fd6fbf95f3445b178582ea`  
		Last Modified: Tue, 13 Oct 2026 23:14:57 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd2967381c0ac945ad17d43f47e075526d23209a7ca9cd96d5c904b466a5687`  
		Last Modified: Tue, 13 Oct 2026 23:14:56 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33694ea6cfa29976493725e6e05da466dc1ca63078d080882da1d2fafd606985`  
		Last Modified: Tue, 13 Oct 2026 23:14:55 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed90d72b082fc1d6a0c517b7661d08835933290a516650a14976a5acfb1839d6`  
		Last Modified: Tue, 13 Oct 2026 23:14:55 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3712034f604c96b5ce0b6e5a0c8043470f671ed6cf45c8e3fbf7dc1dee79ef96`  
		Last Modified: Tue, 13 Oct 2026 23:14:55 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:232d9be0bce704b0e72fedd733a80a1f55cee21b9f0723fefae3fbad06e4ebcc`  
		Last Modified: Tue, 13 Oct 2026 23:14:55 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f784efa3b6dd607c44005a56f72e8ab5150d4a2690419bdfc2c410119b575e`  
		Last Modified: Tue, 13 Oct 2026 23:14:54 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa931b701b1f84a09f6ad82daeff036376f7458445082ddde2d83daba5173234`  
		Last Modified: Tue, 13 Oct 2026 23:14:54 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830debf40ffc23574a86ba819beff557ac7c23e307a13592e6aa97770719b08e`  
		Last Modified: Tue, 13 Oct 2026 23:14:54 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe854e7d6b93486b6599eff7411d4a10b24644f3db61715b4168b0f448f508c`  
		Last Modified: Tue, 13 Oct 2026 23:14:54 GMT  
		Size: 350.2 KB (350232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d0bb33bb83cd93c3033ed1d1f6dae2cfad893caebe7ce1d61cba340d986624`  
		Last Modified: Tue, 13 Oct 2026 23:14:54 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull caddy@sha256:5dcdf211c58f9a5b79196c78c485e6e811c7607c95541909daa26976aaedfcc4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2245951396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb72d64c07b5b10b95a895a6efca843c8004e1c8ddb5aea6f8298703d35a8415`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:04:47 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:16:40 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Tue, 13 Oct 2026 23:16:41 GMT
ENV CADDY_VERSION=v2.11.7
# Tue, 13 Oct 2026 23:16:49 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.7/caddy_2.11.7_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('c308154504e53755958ffc62d8a2657ab17eefd6dd25c45dbb2c3d93d29519971f77ca652f7d0f2bcb7f980b9ba3822478865e29969d0272d7613550a43152b1')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Tue, 13 Oct 2026 23:16:50 GMT
ENV XDG_CONFIG_HOME=c:/config
# Tue, 13 Oct 2026 23:16:50 GMT
ENV XDG_DATA_HOME=c:/data
# Tue, 13 Oct 2026 23:16:50 GMT
LABEL org.opencontainers.image.version=v2.11.7
# Tue, 13 Oct 2026 23:16:51 GMT
LABEL org.opencontainers.image.title=Caddy
# Tue, 13 Oct 2026 23:16:52 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Tue, 13 Oct 2026 23:16:52 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Tue, 13 Oct 2026 23:16:53 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Tue, 13 Oct 2026 23:16:54 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Tue, 13 Oct 2026 23:16:55 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Tue, 13 Oct 2026 23:16:56 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Tue, 13 Oct 2026 23:16:56 GMT
EXPOSE 80
# Tue, 13 Oct 2026 23:16:57 GMT
EXPOSE 443
# Tue, 13 Oct 2026 23:16:58 GMT
EXPOSE 443/udp
# Tue, 13 Oct 2026 23:16:59 GMT
EXPOSE 2019
# Tue, 13 Oct 2026 23:17:04 GMT
RUN caddy version
# Tue, 13 Oct 2026 23:17:04 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3033d1989bb525522772922f2f15183b1bbeac73e44eb447749792cb27dffdb`  
		Last Modified: Tue, 13 Oct 2026 23:05:30 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f6eb605957345048437981801a1ac6d285a0572bb30e895c2eba234a39688d`  
		Last Modified: Tue, 13 Oct 2026 23:17:14 GMT  
		Size: 356.8 KB (356794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8faba5f728d5e779460165555cc775bc8c1306df97c53fed94eb7692774dbb86`  
		Last Modified: Tue, 13 Oct 2026 23:17:13 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f85962d988870e47f3c6f39b84e751c6ab20eb979552c4d14ef32086fdb673`  
		Last Modified: Tue, 13 Oct 2026 23:17:16 GMT  
		Size: 18.9 MB (18943883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d1cb814b0087aab74072f3802a96dc5095d72275809ae24b3bd64883ffdcbf`  
		Last Modified: Tue, 13 Oct 2026 23:17:13 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32940e15c653410ab88a6e22248b6bf1cbbff23c035bdf4bd49a6d4a0058160`  
		Last Modified: Tue, 13 Oct 2026 23:17:12 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3e7ba830f8fbc1f2cd0849a6b5069f9aaec6a47a4cf1e960a7cdfd281d130e`  
		Last Modified: Tue, 13 Oct 2026 23:17:12 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755c7287c72dbdd877f547593fc89ffedcb0f4a7e5e8e31847810d06b27dd7e7`  
		Last Modified: Tue, 13 Oct 2026 23:17:12 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31af5a45cf516222092b7993805d75f056677024ddc32af2b3a2995f1529796f`  
		Last Modified: Tue, 13 Oct 2026 23:17:12 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9062c3d50755901fceaec8c5e7b107c44b91ceb0e6d86f94e10b221020c3dbcf`  
		Last Modified: Tue, 13 Oct 2026 23:17:12 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa38031eefec31cfb06ce4c81d7415bbdb40bf06ce0d5c5f4c5eec787aab889`  
		Last Modified: Tue, 13 Oct 2026 23:17:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bbfa5f8d08ccdd20c2b61bf6849495f5dbf7e9a114abd1ddf2e850f1b13655`  
		Last Modified: Tue, 13 Oct 2026 23:17:10 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:289f62eb7112f90cb4ee09e4a7d8aa719cbf3593c8536a480dcbbab87d2d55c7`  
		Last Modified: Tue, 13 Oct 2026 23:17:10 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a39e7d777b9196421d6601b6ab715ea5ba23b7fc5afdf8c088881844500e01`  
		Last Modified: Tue, 13 Oct 2026 23:17:10 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049f9471f427e20d2316d6856ace3f7d3896feee73d82583cbfda816cf15e996`  
		Last Modified: Tue, 13 Oct 2026 23:17:10 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4427087a2bb6d8b52ab1cb400f74b7bb0f0efc1de65ed3c071eb77e70e74e9`  
		Last Modified: Tue, 13 Oct 2026 23:17:08 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64dbade3821c368ff9e0c966ad0782f9122f1e957d5c415becbafac4c69461ec`  
		Last Modified: Tue, 13 Oct 2026 23:17:08 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1774904bb8f0198afd970571abedff5913f07bb5bbcea6a6d4c400fbc78e52`  
		Last Modified: Tue, 13 Oct 2026 23:17:08 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872182fe1d950056de2391412b2bab9e3fdde823dfc269c24f813aec0d9dadb2`  
		Last Modified: Tue, 13 Oct 2026 23:17:09 GMT  
		Size: 343.0 KB (342978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f242d4afcb38569f7ec0ed177c914eb8f43c9a34aa580a32386a3a466a63956b`  
		Last Modified: Tue, 13 Oct 2026 23:17:08 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
