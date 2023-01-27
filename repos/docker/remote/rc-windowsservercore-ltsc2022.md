## `docker:rc-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:654e182ba7444b253016ddf13e919267df71cf43ea0faa1ec4a889bc0f250ea3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.1487; amd64

### `docker:rc-windowsservercore-ltsc2022` - windows version 10.0.20348.1487; amd64

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
