## `mongo:7-windowsservercore`

```console
$ docker pull mongo@sha256:13f8a7ad21a4f0dafdbdea34c175c24d95ecdb0a2cd52e092f71f916ad5fc781
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `mongo:7-windowsservercore` - windows version 10.0.26100.33296; amd64

```console
$ docker pull mongo@sha256:546d01c1fd61b6e725cf10d2ebe2fabf62145667d63833f08422868520300109
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3066490824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bc182b9d87976d1ec42bc181603998fcfc784f32099ecbae882bb3759a8aa2`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:46:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:49:05 GMT
ENV MONGO_VERSION=7.0.40
# Wed, 12 Aug 2026 17:49:06 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Wed, 12 Aug 2026 17:49:06 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Wed, 12 Aug 2026 17:50:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:50:39 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:50:39 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:50:40 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efc9541172fee148ae0773f77cd5c15fd952a1ad7b84849afc9becf648dd6d1`  
		Last Modified: Wed, 12 Aug 2026 17:48:50 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3cfb1967751bd0d24bcf4da1e49923ca7e1471c02cd9f38cdc015048a3e84e`  
		Last Modified: Wed, 12 Aug 2026 17:50:46 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbaa4e7d5472f2d2fa17694eb79adfe413e06285141775b48912d6b305249e70`  
		Last Modified: Wed, 12 Aug 2026 17:50:45 GMT  
		Size: 1.3 KB (1262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a43a758d25412f09f9b2566c366c96ab3fa7cc5b5cf00ce02fbb1d419055874`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a746cb395aaa14972b03dc2ed9fb4fd2bdaedb2ad794ed30b17c590a7420b13`  
		Last Modified: Wed, 12 Aug 2026 17:51:38 GMT  
		Size: 625.7 MB (625696389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6aedf7dd51f28ff7c6ba2ab26c228f7d3403b801d0bddc4971bfee9dbc0c218`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6494ac04728ca1ae430513815d0c6102f42268e0fddca65f52c3e3694887c1b`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7beb1fd23821ca86e733b6c4078ee4c867e08cda3a32970bab3548573b2329e3`  
		Last Modified: Wed, 12 Aug 2026 17:50:44 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:7-windowsservercore` - windows version 10.0.20348.5499; amd64

```console
$ docker pull mongo@sha256:f6d968d3ec586deda5fa100624153c35061c56581f95bb3c2c46a677fc3a531d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 GB (2809652944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6686fced41d59847503a8d43fdf58efa36198ba8ebc14fce8e7b0e1989d58ed4`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:49:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Wed, 12 Aug 2026 17:49:12 GMT
ENV MONGO_VERSION=7.0.40
# Wed, 12 Aug 2026 17:49:13 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-7.0.40-signed.msi
# Wed, 12 Aug 2026 17:49:14 GMT
ENV MONGO_DOWNLOAD_SHA256=1adfb2c433f6215cfe38ce871b39d6ba2bd3d6d9159b6b251c647a694fd113c7
# Wed, 12 Aug 2026 17:50:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Aug 2026 17:50:22 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 12 Aug 2026 17:50:23 GMT
EXPOSE 27017
# Wed, 12 Aug 2026 17:50:23 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6663eb7183e1ec85dde1e1417037a290a09bf063d3d5deea1ba9d134d7c7d44`  
		Last Modified: Wed, 12 Aug 2026 17:50:29 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f2f132716487cfbd67422406a1a3d3411baa56b5c9f8d30b09d539dedab73b`  
		Last Modified: Wed, 12 Aug 2026 17:50:29 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23b0cb1564076c54f685439d7cdd9ebd02c721ebbb284fcce57b576ed4094f1`  
		Last Modified: Wed, 12 Aug 2026 17:50:28 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0a613a252fa45362eb7c442bd34745c12c4f416d89a39bb133707d77bfd2b3`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65f80357647f76f82b9bd1c8eab9d5ff205a781b665e0842236bd0debec95c4`  
		Last Modified: Wed, 12 Aug 2026 17:51:17 GMT  
		Size: 625.6 MB (625646398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2d855813a8b324f9b87829c1771871e80df1f501fb883442dcb4d6c8837b0b`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea593466449a500abdd9fc5ac3b5944da40426c87cf824bb25ac73a74557944`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3cffe0c4cc18e6ee5f4b19bac18d4219974ea6ea8508583c1aff940ec0c77c`  
		Last Modified: Wed, 12 Aug 2026 17:50:27 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
