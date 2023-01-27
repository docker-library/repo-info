## `docker:rc-windowsservercore`

```console
$ docker pull docker@sha256:1bb27dd0b0adb42da24ab2f4e0e64c4c169048174bc34b67f5722db6f1aed23a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.20348.1487; amd64
	-	windows version 10.0.17763.3887; amd64

### `docker:rc-windowsservercore` - windows version 10.0.20348.1487; amd64

```console
$ docker pull docker@sha256:c939605785c64a63657a7be092e59bd55c91fe4403a0262f043d18b879784de1
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1404231855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76df9482b6750eebefc1f7d01cfdb034c6cde98552bb8e24589d9d8bc3a73a38`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 06 Jan 2023 23:47:40 GMT
RUN Apply image 10.0.20348.1487
# Thu, 12 Jan 2023 01:40:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 05:38:30 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sat, 21 Jan 2023 01:15:43 GMT
ENV DOCKER_VERSION=23.0.0-rc.3
# Sat, 21 Jan 2023 01:15:44 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/test/x86_64/docker-23.0.0-rc.3.zip
# Sat, 21 Jan 2023 01:16:18 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:1a65b089bc835b0c3700397b1935e97cf469b0891bb4de3942c8dfbe4b672d47`  
		Last Modified: Thu, 12 Jan 2023 02:33:52 GMT  
		Size: 1.4 GB (1386029089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa41f3a43cc9e40e953b9cfe1530c27eed49cf79cdae96e9dfc39b04a1b75ecf`  
		Last Modified: Thu, 12 Jan 2023 02:29:45 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf9fbb5bb66b4765df4292381a96e1cfc78d67a08a48a930d66d57438abacd1`  
		Last Modified: Thu, 12 Jan 2023 05:42:25 GMT  
		Size: 612.2 KB (612183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c56549ad7023200d1f5cf146f0ffbd096c83263ec0ee42b50933b129b724a7`  
		Last Modified: Sat, 21 Jan 2023 01:19:31 GMT  
		Size: 1.4 KB (1398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134ddc7cf6015936622a4060e75cb8f8d44cbdeee41118e6e258227037be1954`  
		Last Modified: Sat, 21 Jan 2023 01:19:31 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f34d25b0a87b3630ae76b7d4b916196b177c4588629f9ecb78c734bbbeef036`  
		Last Modified: Sat, 21 Jan 2023 01:19:35 GMT  
		Size: 17.6 MB (17586322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-windowsservercore` - windows version 10.0.17763.3887; amd64

```console
$ docker pull docker@sha256:015bc6ade837e6d3047987dd90de5b83dff5ecb8c39636eadd6613b727d33017
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 GB (1725690417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:966518d560db288bf0c068ac4860351ca817af97ee5f6c6b76bd8ad7d274d96f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 07 Jan 2023 05:37:58 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 01:43:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Jan 2023 05:39:36 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sat, 21 Jan 2023 01:16:30 GMT
ENV DOCKER_VERSION=23.0.0-rc.3
# Sat, 21 Jan 2023 01:16:32 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/test/x86_64/docker-23.0.0-rc.3.zip
# Sat, 21 Jan 2023 01:17:10 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:6e222c5ada69382aa2b4fe30b23ae56c7e3ada92712109d20f3edd457a6120b6`  
		Last Modified: Thu, 12 Jan 2023 02:40:02 GMT  
		Size: 1.7 GB (1707943932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691d210e0841eeceff800f3b441be6db4bc689728f1bb771ce88f839d06f57d0`  
		Last Modified: Thu, 12 Jan 2023 02:34:04 GMT  
		Size: 1.4 KB (1433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1203a660d1e7b9cba56b0f2b04e0f4d443536c90572741405636436ed42c43`  
		Last Modified: Thu, 12 Jan 2023 05:42:38 GMT  
		Size: 365.4 KB (365388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8965eb50d081654c7a370064c86f58206404ba34db296bca24aec54b88e24cb`  
		Last Modified: Sat, 21 Jan 2023 01:19:45 GMT  
		Size: 1.4 KB (1395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab692b512603b8b2c0a621a70153cc794ce12b07b0b98e17860989e08fd0ddf`  
		Last Modified: Sat, 21 Jan 2023 01:19:45 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad9640545bdc806f4b03a08c0bc52daa258d04c8b426b5ff211a9d62727fa2a`  
		Last Modified: Sat, 21 Jan 2023 01:19:48 GMT  
		Size: 17.4 MB (17376873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
