## `golang:windowsservercore`

```console
$ docker pull golang@sha256:2400c18648bfadd08153e187d8e7eabe428ae005ce2851e9268246e5ca0a338d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33674; amd64
	-	windows version 10.0.20348.5773; amd64

### `golang:windowsservercore` - windows version 10.0.26100.33674; amd64

```console
$ docker pull golang@sha256:20d067a84174d2b7f3e74e2264f3d6607713d54f10e9065c0975c5dd1ed304aa
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2509542168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72226d2f6707ee46e16ac14bdc893544a85394e32365ef02b2c5a7381ca2e931`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 24 Oct 2026 23:52:44 GMT
RUN Install update 10.0.26100.33674
# Tue, 27 Oct 2026 23:01:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 23:01:50 GMT
ENV GIT_VERSION=2.56.0.4
# Tue, 27 Oct 2026 23:01:50 GMT
ENV GIT_TAG=v2.56.0.windows.4
# Tue, 27 Oct 2026 23:01:51 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.0.windows.4/MinGit-2.56.0.4-64-bit.zip
# Tue, 27 Oct 2026 23:01:51 GMT
ENV GIT_DOWNLOAD_SHA256=e3bf78351fe777fba47ddee5950082f8a98bb0f02604fdc7ba3ee2cb68ffa877
# Tue, 27 Oct 2026 23:02:08 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:02:08 GMT
ENV GOPATH=C:\go
# Tue, 27 Oct 2026 23:02:13 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 27 Oct 2026 23:02:13 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 27 Oct 2026 23:03:36 GMT
RUN $url = 'https://dl.google.com/go/go1.27.3.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'f26081f438319757f8a1b46d7d0b2c5ec7583d4038e485e0aa725cfde7885fff'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:03:37 GMT
WORKDIR C:\go
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
	-	`sha256:cd9dc3ea73737b5e7988b67a3b7d66fb12d1c2d45ae0faa88815590457b0a29b`  
		Last Modified: Tue, 27 Oct 2026 23:03:53 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bca6fe69737ca73ad3f90994d40696ec38484b78dfb551c7453e8a9807b6d01`  
		Last Modified: Tue, 27 Oct 2026 23:03:53 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82709fc838d73d56ca04aa73f6f789b6386d035fb9349e1c9d228780049400c4`  
		Last Modified: Tue, 27 Oct 2026 23:03:52 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82212b5c849462e3dd0139e5a5b8d58d3290d92803198d5c1fee2a88cc24a5be`  
		Last Modified: Tue, 27 Oct 2026 23:03:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e0cc77e3f495c77875f1db941bab19c86844345c0256d4bf05597e900d69`  
		Last Modified: Tue, 27 Oct 2026 23:03:51 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3325ade1b95eef958b43223a8e2f930fb7a88598ff07289c108e40ea9568a3b`  
		Last Modified: Tue, 27 Oct 2026 23:03:56 GMT  
		Size: 43.3 MB (43340994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45beab588c2115a45d58cb6eab918d433478c7dbbef7d92f37cba8577cf68bd`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f4a352e310ffb8a93987326f53c0de896ff11e6a2ff1eea5ff3e7d53ecbdd0`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 342.2 KB (342171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e82a5f4fcc0e72594b3ae2c9f480fa94be4c163c60eb901be1efe8af9a3b22da`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3514708ffcd88eb748540b2377d36f6f66979a9a404466596eef1f4ddc267a9f`  
		Last Modified: Tue, 27 Oct 2026 23:04:00 GMT  
		Size: 73.8 MB (73799496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff0d49c8c867b9582a5632680730d342eb19e9b2312e19c6d15dd7d0c6224a5`  
		Last Modified: Tue, 27 Oct 2026 23:03:50 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:windowsservercore` - windows version 10.0.20348.5773; amd64

```console
$ docker pull golang@sha256:f9f3a119c65363208baa26a8ed97d1b283fcb67aa80392f004ff425c6b2bde05
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2344518653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89888192f0c78df02b85a52f6a269240bca9913accd14262f17a9ab2a07e4e69`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 23:01:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 23:01:55 GMT
ENV GIT_VERSION=2.56.0.4
# Tue, 27 Oct 2026 23:01:56 GMT
ENV GIT_TAG=v2.56.0.windows.4
# Tue, 27 Oct 2026 23:01:57 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.56.0.windows.4/MinGit-2.56.0.4-64-bit.zip
# Tue, 27 Oct 2026 23:01:58 GMT
ENV GIT_DOWNLOAD_SHA256=e3bf78351fe777fba47ddee5950082f8a98bb0f02604fdc7ba3ee2cb68ffa877
# Tue, 27 Oct 2026 23:02:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\ucrt64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ("git version") ...'; 	git version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:02:19 GMT
ENV GOPATH=C:\go
# Tue, 27 Oct 2026 23:02:25 GMT
RUN $newPath = ('{0}\bin;C:\Program Files\Go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 27 Oct 2026 23:02:25 GMT
ENV GOLANG_VERSION=1.27.3
# Tue, 27 Oct 2026 23:03:54 GMT
RUN $url = 'https://dl.google.com/go/go1.27.3.windows-amd64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'f26081f438319757f8a1b46d7d0b2c5ec7583d4038e485e0aa725cfde7885fff'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Moving ...'; 	Move-Item -Path C:\go -Destination 'C:\Program Files\Go'; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Complete.';
# Tue, 27 Oct 2026 23:03:55 GMT
WORKDIR C:\go
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
	-	`sha256:77f98ea005c6b5e82948bfd0d9f8a10a638f47353d2a860c1f04848b1fe63f43`  
		Last Modified: Tue, 27 Oct 2026 23:04:06 GMT  
		Size: 1.3 KB (1326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25ff349fed69087dede49cbfb0d3b004befe6b14a59c473e56c8e2cccf4a6b4`  
		Last Modified: Tue, 27 Oct 2026 23:04:06 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8daa49ca7ead8b36f0b651f5788eead2db56caec3df7b94eb6f594cd3e5badb`  
		Last Modified: Tue, 27 Oct 2026 23:04:05 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32b0dbaa15dfd6332ead1255f233ea55cbb7a7d2eb216492a47bc4eb4f08a36`  
		Last Modified: Tue, 27 Oct 2026 23:04:04 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845ec009e41fbeeb45ebd214b6d358294dbf999e572d9d7ed78fb3f3f1b141a1`  
		Last Modified: Tue, 27 Oct 2026 23:04:04 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0343caa9e4c6abefa9caf25adbeacea608cbff97167723f99a282aa3a2d3c41c`  
		Last Modified: Tue, 27 Oct 2026 23:04:10 GMT  
		Size: 43.3 MB (43334640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6898c1b1554e9b4d9b0dab9c58c389f3f346f9f3d8be61f727d3dded97076b`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad6ffce0035c184d0f1cc69cc6eeee2960caf115514e65c99284f29a2362e3c`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 328.9 KB (328893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7eb5a2f945389244a435c579c2a21d1f289ebc2085d6ca51a23413dbb7345ff`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20140fb2422e642b34aa718958c5502a414c499b2fb93bff0ad64a135333051a`  
		Last Modified: Tue, 27 Oct 2026 23:04:14 GMT  
		Size: 73.8 MB (73788363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d46f6710058016f086fc453a4ff487f1ef0a8a5f2ed98c165d7be7df1a9daa`  
		Last Modified: Tue, 27 Oct 2026 23:04:03 GMT  
		Size: 1.5 KB (1466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
