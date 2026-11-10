## `caddy:2-builder-windowsservercore-ltsc2022`

```console
$ docker pull caddy@sha256:a2a8b14c0c5f2ed0b4fb0f406b04cc45cad67189aa0701871a74e5ab11677c20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `caddy:2-builder-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull caddy@sha256:0ce8dba78e5f24d910b5b421403cc7e4143436b68ad644553557cc9750233323
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2347005826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07fc73b05efa51028a27f66fa5451a671d1fe7fe192be6da59ce6b629de5d0eb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 10 Nov 2026 18:23:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 10 Nov 2026 18:24:02 GMT
ENV GIT_VERSION=2.56.0.4
# Tue, 10 Nov 2026 18:24:04 GMT
ENV GIT_TAG=v2.56.0.windows.4
# Tue, 10 Nov 2026 18:24:06 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.0.windows.4/MinGit-2.56.0.4-64-bit.zip
# Tue, 10 Nov 2026 18:24:09 GMT
ENV GIT_DOWNLOAD_SHA256=e3bf78351fe777fba47ddee5950082f8a98bb0f02604fdc7ba3ee2cb68ffa877
# Tue, 10 Nov 2026 18:26:20 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 10 Nov 2026 18:26:21 GMT
ENV GOPATH=C:\go
# Tue, 10 Nov 2026 18:26:30 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 10 Nov 2026 18:26:31 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 10 Nov 2026 18:29:02 GMT
RUN $url = 'https://dl.google.com/go/go1.27.4.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '178ab98950ac69ab25069307dc6ade79f3816e414cce95b4da166a115cde1e7e'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 10 Nov 2026 18:29:04 GMT
WORKDIR C:\go
# Tue, 10 Nov 2026 18:53:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 10 Nov 2026 18:53:15 GMT
ENV XCADDY_VERSION=v0.4.7
# Tue, 10 Nov 2026 18:53:16 GMT
ENV CADDY_VERSION=v2.11.9
# Tue, 10 Nov 2026 18:53:17 GMT
ENV XCADDY_SKIP_CLEANUP=1
# Tue, 10 Nov 2026 18:53:27 GMT
RUN Invoke-WebRequest         -Uri "https://github.com/caddyserver/xcaddy/releases/download/v0.4.7/xcaddy_0.4.7_windows_amd64.zip"         -OutFile "/xcaddy.zip";     if (!(Get-FileHash -Path /xcaddy.zip -Algorithm SHA512).Hash.ToLower().Equals('d39c613490286e68416285b495cbfc0cf955c6155561f9bee2d64fe9a95d46272d6123a69356c0246f8acf368b56fc6a941ffca511f170e843dca1d51192ba47')) { exit 1; };     Expand-Archive -Path "/xcaddy.zip" -DestinationPath "/" -Force;     Remove-Item "/xcaddy.zip" -Force
# Tue, 10 Nov 2026 18:53:28 GMT
WORKDIR C:\
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
	-	`sha256:1a78d42bba351b407eca6816fda052bbd9936959c6adcd9433057c5879df829b`  
		Last Modified: Tue, 10 Nov 2026 18:29:21 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cbaeb7b5ca4256efe021d7611068c878484a5d8d86e722fc797d7e9504f24c`  
		Last Modified: Tue, 10 Nov 2026 18:29:21 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8c59fbb97ff95c162f01f59f3c3b9080646de77722c58a75e4b3bfc9bbe890`  
		Last Modified: Tue, 10 Nov 2026 18:29:20 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86309b807a56b5b401aa424f48ba0a8b9936549469ebbaf87747890d68781ecb`  
		Last Modified: Tue, 10 Nov 2026 18:29:20 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8af0c62b4923e51fccff1480db4bdb900fb65022b80f0b9fca5f9db9bf2dbb`  
		Last Modified: Tue, 10 Nov 2026 18:29:20 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c432188be1c5b5e6ea71556d6aca3a232c3f659b2e3aa85c1dcf0cce4e8a330e`  
		Last Modified: Tue, 10 Nov 2026 18:29:24 GMT  
		Size: 43.4 MB (43350246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f358c61eb8e1441032af755231a3f77273b6218c1232a7432c73049f4844608`  
		Last Modified: Tue, 10 Nov 2026 18:29:18 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdf2bc752ded56496f1f89e6b84ea1c4286407da980d5944e049f788075bb8bc`  
		Last Modified: Tue, 10 Nov 2026 18:29:18 GMT  
		Size: 295.7 KB (295678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240454b8ef7f7ac3e3834ab353d48483e684af787441bb478cd296f7fed74d22`  
		Last Modified: Tue, 10 Nov 2026 18:29:18 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c910d39a35625cf299009463ff4615f82729c1875ee23c9bb1f1d7c23fe3f625`  
		Last Modified: Tue, 10 Nov 2026 18:29:29 GMT  
		Size: 73.8 MB (73829077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5762ce997b307d087d50d64c17cb97b6eed32ad8cd76aa6f648ff0b9512718c`  
		Last Modified: Tue, 10 Nov 2026 18:29:18 GMT  
		Size: 1.5 KB (1484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:675018cafe501421c8024df40274d784443b90b78843b6b25c0fbf97ff965b28`  
		Last Modified: Tue, 10 Nov 2026 18:53:33 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37d40d33c4b0f647c9d11a2e7a6b3b9601c819b1e8a4c9b19a364dfbeec3ba0`  
		Last Modified: Tue, 10 Nov 2026 18:53:32 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d3b75b3dca3340512310c272af192ac4cdab5066946c4167800d582ac00117f`  
		Last Modified: Tue, 10 Nov 2026 18:53:32 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7145da54e9ae1186e3b6968a93dfc6553dd2bece6629645b26c4fc6ea4bcdcb8`  
		Last Modified: Tue, 10 Nov 2026 18:53:32 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb3538d059abbdbc06bafdd9d285e75f708ad074ccdb5492289322f13b85b57`  
		Last Modified: Tue, 10 Nov 2026 18:53:33 GMT  
		Size: 2.5 MB (2457466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55bd23885be8e5aa014bf7dd15a94287e779e0f488f2caa05e99cad3840cf00f`  
		Last Modified: Tue, 10 Nov 2026 18:53:32 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
