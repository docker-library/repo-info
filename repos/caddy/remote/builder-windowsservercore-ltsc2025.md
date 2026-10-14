## `caddy:builder-windowsservercore-ltsc2025`

```console
$ docker pull caddy@sha256:a85f790c0cb8a9a6b43213b2916e2745afdeef3f75068a620765396cf892a7da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33650; amd64

### `caddy:builder-windowsservercore-ltsc2025` - windows version 10.0.26100.33650; amd64

```console
$ docker pull caddy@sha256:18c3a17d6339dd7e6eedcee1b898fd04cf75b6512114b72693e5fd9c3d991cc1
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2519829642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f65ada037bc300112fb8b8849dfa1d060f6b82fc07f215bddbbf47e31d14f0f2`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:10:38 GMT
ENV GIT_VERSION=2.48.1
# Tue, 13 Oct 2026 23:10:38 GMT
ENV GIT_TAG=v2.48.1.windows.1
# Tue, 13 Oct 2026 23:10:39 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.48.1.windows.1/MinGit-2.48.1-64-bit.zip
# Tue, 13 Oct 2026 23:10:39 GMT
ENV GIT_DOWNLOAD_SHA256=11e8f462726827acccc7ecdad541f2544cbe5506d70fef4fa1ffac7c16288709
# Tue, 13 Oct 2026 23:10:53 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:10:53 GMT
ENV GOPATH=C:\go
# Tue, 13 Oct 2026 23:10:58 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 13 Oct 2026 23:10:59 GMT
ENV GOLANG_VERSION=1.27.2
# Tue, 13 Oct 2026 23:12:26 GMT
RUN $url = 'https://dl.google.com/go/go1.27.2.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '1314008898bd40df77af4b014f777f08873dbdfbcd3d92308728ee03304fe04f'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:12:28 GMT
WORKDIR C:\go
# Wed, 14 Oct 2026 00:20:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Oct 2026 00:20:59 GMT
ENV XCADDY_VERSION=v0.4.7
# Wed, 14 Oct 2026 00:21:00 GMT
ENV CADDY_VERSION=v2.11.7
# Wed, 14 Oct 2026 00:21:00 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Wed, 14 Oct 2026 00:21:16 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Wed, 14 Oct 2026 00:21:16 GMT
WORKDIR C:\
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
	-	`sha256:1fb7dfc46006339a6f16acc5304b94216980fef39bfe3cfe00a0e43b920c14dc`  
		Last Modified: Tue, 13 Oct 2026 23:03:43 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf78fd3e595c016f3adfca519625aef8e5d067b22a8e867df5c1d505ca74e754`  
		Last Modified: Tue, 13 Oct 2026 23:12:35 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f264257167343af0855f19275177b6a130491116f36fc106d988039c67e6253f`  
		Last Modified: Tue, 13 Oct 2026 23:12:34 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4c6ea6c38241cf21d6dc96c6eb9182945c86a1d1609e20c28970f477794ebe`  
		Last Modified: Tue, 13 Oct 2026 23:12:34 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b36af73c87a01ed573cfc75566e0cfefacb29a5679b6e83ac8f5e2f9425c3ee`  
		Last Modified: Tue, 13 Oct 2026 23:12:34 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56fe211638a9358f8f95a52413703316fe01941e728d119b618ad55557bdc5a`  
		Last Modified: Tue, 13 Oct 2026 23:12:40 GMT  
		Size: 51.2 MB (51215302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969ba2e1ee74e58c3c7deab117de5df4b52b59a2325a0344b22cde1b0f08b007`  
		Last Modified: Tue, 13 Oct 2026 23:12:32 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c47a8a4143d28d7a5ec621a73765ebe9ca09109a0af2ad441a610c0226baf67d`  
		Last Modified: Tue, 13 Oct 2026 23:12:32 GMT  
		Size: 342.1 KB (342083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8b002f71ff1787c9cbee5b86b21fb64e1da07f5a92371b4cd32462ccb0ed83`  
		Last Modified: Tue, 13 Oct 2026 23:12:32 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcd948332eb566fde086623ca4c250654fed601a9dfcf565088b8043b85468e`  
		Last Modified: Tue, 13 Oct 2026 23:12:43 GMT  
		Size: 73.8 MB (73808511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:950d190b5d7ae3f0a606bb00e3deb2487eaa1fb17a95789afa1ff85bf4aa7ca5`  
		Last Modified: Tue, 13 Oct 2026 23:12:32 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275ba5bcfdd83d9bd6fe8933a3b8ef63fc24da5b0f016e085ef4f97418e1844e`  
		Last Modified: Wed, 14 Oct 2026 00:21:24 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f2d0fb34482c6ce7ef7b6db820b541d9748603020d6e6d022e77389b0b487c`  
		Last Modified: Wed, 14 Oct 2026 00:21:22 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b2fe74b41055659802928ccf1cf4090f06879a5bd490fbd4a3ee769876fac1`  
		Last Modified: Wed, 14 Oct 2026 00:21:22 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b526cf8988c3ea15939ef270d17dbbc447154d053cb2bddb0efbb408233782`  
		Last Modified: Wed, 14 Oct 2026 00:21:22 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31f8cb053b49fe4800483111c4311e2df264e6ca89d4f1ac736d50dd694e1b7`  
		Last Modified: Wed, 14 Oct 2026 00:21:23 GMT  
		Size: 2.5 MB (2452455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e0153b800e7d45a724474982f7f514cfc86430e33fff77ae7d8c32ed984753`  
		Last Modified: Wed, 14 Oct 2026 00:21:22 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
