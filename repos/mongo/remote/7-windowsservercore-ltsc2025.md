## `mongo:7-windowsservercore-ltsc2025`

```console
$ docker pull mongo@sha256:51db0c3806da05f5f9695a0cb638b80048dfe0e2a97d459551ff73b4d1e77727
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33296; amd64

### `mongo:7-windowsservercore-ltsc2025` - windows version 10.0.26100.33296; amd64

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
