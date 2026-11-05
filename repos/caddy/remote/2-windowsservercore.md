## `caddy:2-windowsservercore`

```console
$ docker pull caddy@sha256:dc5598fddf05d80360663cb0e872500af9db218dc9dd72a2313593e0129789ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `caddy:2-windowsservercore` - windows version 10.0.26100.33674; amd64

```console
$ docker pull caddy@sha256:95abf9d14aaade6d55fc1fe67837955424c407f7c42122cf56ec269df234b976
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2411640909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab973cc14b9e0c52be1b72c2f49166655cfed54fcb528bb66f89be6dcdea52d`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Thu, 05 Nov 2026 18:48:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:50:14 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Thu, 05 Nov 2026 18:50:15 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:50:31 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Thu, 05 Nov 2026 18:50:31 GMT
ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 18:50:32 GMT
ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 18:50:35 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 18:50:37 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 18:50:38 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 18:50:39 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 18:50:40 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 18:50:41 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 18:50:42 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 18:50:43 GMT
EXPOSE 80
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443/udp
# Thu, 05 Nov 2026 18:50:45 GMT
EXPOSE 2019
# Thu, 05 Nov 2026 18:50:58 GMT
RUN caddy version
# Thu, 05 Nov 2026 18:50:58 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f431fb112b4d6aec186615d6db738217b1c9e607dc5d0addbeaffcbea73f51`  
		Last Modified: Mon, 26 Oct 2026 22:12:58 GMT  
		Size: 869.0 MB (868989727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3105b031b17a07724dd061a02beeb8696051059e004ecd9ed26a9e17fa3cdc02`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6906576f53243cb11c77a99856afa7453fea514a6239d8daad6968e7a25cba`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 390.9 KB (390919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066b4e49953291e1e590b8dc069208ed71f03d794a65a73813cb94d3655ec8f6`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f696f899da47fb0fca096725494a65fa4db2ed97ad592f434625bbf012bf4ccf`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 18.8 MB (18842906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61509ec5d34e9f0c9171bdaa8e0f889d0ae0266be4be408c271535c594f26c1`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ad5baa2304ae76c673dfcc132b4d9f5ed56a9c843984069ec22db953f24e183`  
		Last Modified: Thu, 05 Nov 2026 18:51:07 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf73fb3dacde170edc236e1c1f5e252519e2bba968312caa5570f79dd63be52`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9609d2b97073146c6468eedb5f32415c8a4cea9ca99c0602ccec800de92daf`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f857ee3127ebcc1c023b71b6e00845ff2e591296da1c03b77239054ce73059c7`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492801772255ddb526037e2a61f6e3f699aa4bfd695d5d2e844f6b041120e3b4`  
		Last Modified: Thu, 05 Nov 2026 18:51:06 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fc7a0cadb49e63446196633584282ca5d0c21670b9f6a1303cc898819a5939`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4934c1a327b2efa689cf58a31640d074993b68ea01d8a3dc6f84b7aba9f7c40b`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421fbfd0d299f828ca293b67045a58a1398a41a480f918db09529c7720ba005e`  
		Last Modified: Thu, 05 Nov 2026 18:51:05 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6808f4fa8c3f137ea2fe98d8343b4cd850d351a6c24415d6c7af9087023ca853`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc9e06eb01a305ee8abe1f8ad9e360461382e96f40fe09fe66638366d2b3921`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4771a13f86c4e0005351f8cf24a7199b26f48a8aca82fa482712118a2bd1f006`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc5ee75a0594ffb8e38f738cf42f1829027f8569736758d0d7b97265642a34a`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1be9f4dc4e64883d35c8a23d7396f2e832c32ef0bdbbf4bbca5cc99be26a3cf`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e9fcd3b3e14a5fede69ab9fee080810c9d6869d863c0c40b8109dbeb33bc10`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 336.2 KB (336222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad69e21d7b060686c53a003a33e3f7b9f3bcf502846a49bb9ffaa3ecf4b55167`  
		Last Modified: Thu, 05 Nov 2026 18:51:03 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `caddy:2-windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:2cc1f16a110963701a69a8093e051d1e6a68775f92423e05076fa8ac137525c2
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2246593231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81d2947c39b363c1833583c76c91cafe62b764e5397a4d58ebd31dee62c2460`
-	Default Command: `["caddy","run","--config","\/etc\/caddy\/Caddyfile","--adapter","caddyfile"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Thu, 05 Nov 2026 18:48:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 05 Nov 2026 18:49:53 GMT
RUN mkdir /config;     mkdir /data;     mkdir /etc/caddy;     mkdir /usr/share/caddy;     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/config/Caddyfile"         -OutFile "/etc/caddy/Caddyfile";     Invoke-WebRequest         -Uri "https://github.com/caddyserver/dist/raw/33ae08ff08d168572df2956ed14fbc4949880d94/welcome/index.html"         -OutFile "/usr/share/caddy/index.html"
# Thu, 05 Nov 2026 18:49:54 GMT
ENV CADDY_VERSION=v2.11.9
# Thu, 05 Nov 2026 18:50:24 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/caddy/releases/download/v2.11.9/caddy_2.11.9_windows_amd64.zip"         -OutFile "/caddy.zip";     if (!(Get-FileHash -Path /caddy.zip -Algorithm SHA512).Hash.ToLower().Equals('98753d5d42650383d00619ac70917a217141f9e92314185bf6c1b8b439cfcfdf8393da0ebb4675c8cb3b23d29a19aabe99dc5aca64fa1bfc3a1ba22509b06871')) { exit 1; };     Expand-Archive -Path "/caddy.zip" -DestinationPath "/" -Force;     Remove-Item "/caddy.zip" -Force
# Thu, 05 Nov 2026 18:50:26 GMT
ENV XDG_CONFIG_HOME=c:/config
# Thu, 05 Nov 2026 18:50:27 GMT
ENV XDG_DATA_HOME=c:/data
# Thu, 05 Nov 2026 18:50:29 GMT
LABEL org.opencontainers.image.version=v2.11.9
# Thu, 05 Nov 2026 18:50:30 GMT
LABEL org.opencontainers.image.title=Caddy
# Thu, 05 Nov 2026 18:50:32 GMT
LABEL org.opencontainers.image.description=a powerful, enterprise-ready, open source web server with automatic HTTPS written in Go
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.url=https://caddyserver.com
# Thu, 05 Nov 2026 18:50:34 GMT
LABEL org.opencontainers.image.documentation=https://caddyserver.com/docs
# Thu, 05 Nov 2026 18:50:37 GMT
LABEL org.opencontainers.image.vendor=Light Code Labs
# Thu, 05 Nov 2026 18:50:39 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 05 Nov 2026 18:50:40 GMT
LABEL org.opencontainers.image.source=https://github.com/caddyserver/caddy-docker
# Thu, 05 Nov 2026 18:50:42 GMT
EXPOSE 80
# Thu, 05 Nov 2026 18:50:43 GMT
EXPOSE 443
# Thu, 05 Nov 2026 18:50:44 GMT
EXPOSE 443/udp
# Thu, 05 Nov 2026 18:50:45 GMT
EXPOSE 2019
# Thu, 05 Nov 2026 18:51:03 GMT
RUN caddy version
# Thu, 05 Nov 2026 18:51:04 GMT
CMD ["caddy" "run" "--config" "/etc/caddy/Caddyfile" "--adapter" "caddyfile"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fea553d6997affb11590d988a7f41a1ead2d9cc196f5ce609bcdfe88f06dd8`  
		Last Modified: Mon, 26 Oct 2026 22:01:11 GMT  
		Size: 738.0 MB (738037069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a008cba775e8dd0fa98285e50e68016c6e59c9c7d78331b024d243c8028b4cbc`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2d491895f80263abfd15f22c5c30039fa3ebd8d83087a2433cb846961153e1`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 371.5 KB (371473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5358c2eea08f8a9d209da01918bf15f92d5f2604b8bd529de0691bbbaabe927`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f303a38c5095af4de86858b6f2fedefdb9854cd41e24cb7b7f6e0de3e51e36`  
		Last Modified: Thu, 05 Nov 2026 18:51:17 GMT  
		Size: 18.8 MB (18820643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e592ad193121b2d1f6737f2fc89e24d03e9d33d6cca8e7add2957ccf57b9c61`  
		Last Modified: Thu, 05 Nov 2026 18:51:14 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25fe4e292b538b454f7496f886418773ff60ff66c6837656d45cc2eb319ad3d`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a510990588c53fcf965e7ef95cd6e4765af69ddff30a9b85537cd50c39eee3d`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d66d18fd2f2ee4d3baba1e5f3770dbed152867afeb50caad16c8ef145e17a6a2`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c670bb7e8fef2b7d9e51de98054eedf8577c01c8dab3f5307e26ad849db0ab39`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500888919d78c692c88bcec1ff4727723df54e3e34385d05da99c27285ee455f`  
		Last Modified: Thu, 05 Nov 2026 18:51:12 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cdcae9d52f42f49f9a70d23426fc1feceede855ea6a0748f5f8663a35be90a`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7210618d2f93291160433de49867d5821e996bd5f005cc6c2b36801e9820829d`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790aa499060b9807135ef195885142b4c146bb6b428a843e2d8f79e595bb15f3`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07378ecb425dbafad024761d9bb5f11c3102ab26215b09dd90548401cfdbffc`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9bb0f5976c9b254675a71ddc0e556c3e8c57376ad629f3a9431fb344eb0ac46`  
		Last Modified: Thu, 05 Nov 2026 18:51:10 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23012e55c65156794576b8d2534079d31f2adad56300fb59cdeec1f58391db4`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6049bd500c5b62b0a05932db59f93ba3b7324a26e40d0c7e0708070abf5a4da9`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e3314e91f873e91dae6f3f2edceadb9449a46ef807bb118819fe75d83c8bb1`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265b4d1fd5b55896df277baa4c1db1204b11578f29e866d4ad6afb1bc93f976b`  
		Last Modified: Thu, 05 Nov 2026 18:51:09 GMT  
		Size: 322.8 KB (322785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48a65dcbe82d2fa7112e338b77c64a167952bea5d360d7a0b3587b835dbb9d69`  
		Last Modified: Thu, 05 Nov 2026 18:51:08 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
