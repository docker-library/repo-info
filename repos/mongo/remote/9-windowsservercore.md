## `mongo:9-windowsservercore`

```console
$ docker pull mongo@sha256:42a068399924fb5126d50b339722ca9f86557212981e5294fb41c6ca34fd9f46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `mongo:9-windowsservercore` - windows version 10.0.26100.33650; amd64

```console
$ docker pull mongo@sha256:b05256593a89bc98f8d639afbc89d5d47881c655e0b530ec2cff5a03d2f55786
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3386501923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4f009d1c4e5f1f2199e29381a2c04178f9d61f7a49e99fd8df319bc70e2b91e`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:11:10 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 13 Oct 2026 23:11:10 GMT
ENV MONGO_VERSION=9.0.2
# Tue, 13 Oct 2026 23:11:11 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-9.0.2-signed.msi
# Tue, 13 Oct 2026 23:11:11 GMT
ENV MONGO_DOWNLOAD_SHA256=4b13e5e9de98e9ccf6e5589031e6ff969ef9193916d55b6b4b89edf60511f189
# Tue, 13 Oct 2026 23:13:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:13:32 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 13 Oct 2026 23:13:32 GMT
EXPOSE 27017
# Tue, 13 Oct 2026 23:13:33 GMT
CMD ["mongod" "--bind_ip_all"]
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
	-	`sha256:9a7f473372fafb91aec04f339b5c0b607318b0a854fec73afd34a393355012ac`  
		Last Modified: Tue, 13 Oct 2026 23:13:46 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afeed7383af5dbad374d67af657561f4d348529387a1ff01b04741afd16d2f0d`  
		Last Modified: Tue, 13 Oct 2026 23:13:47 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62074a5190267475eadcec1250f62cf862e592826582160062dc0287e5fcc3ac`  
		Last Modified: Tue, 13 Oct 2026 23:13:46 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d772813ad96e1ae55a0d91171bf6797ddc537c818519a091fb98b5b9d8827436`  
		Last Modified: Tue, 13 Oct 2026 23:13:45 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37afccbd04e50c165ba1220a16cd881359b8881840d7af6f07dc82e02d4a97dd`  
		Last Modified: Tue, 13 Oct 2026 23:15:07 GMT  
		Size: 994.5 MB (994498583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f49d143fd525809a6ba15abf8f804b7c1eda730bb58eedb5de8a805eaac5029`  
		Last Modified: Tue, 13 Oct 2026 23:13:45 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6405c5ecf33ce13015777d83fd3698c17c77dafa2c44c5b7d6b997d362d3509a`  
		Last Modified: Tue, 13 Oct 2026 23:13:45 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad2eacb564bd3a6d3d47d3b8790949efea6b13753bdaafb02276a8183541267`  
		Last Modified: Tue, 13 Oct 2026 23:13:45 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mongo:9-windowsservercore` - windows version 10.0.20348.5761; amd64

```console
$ docker pull mongo@sha256:10dcb17b72e61fed26badabcf730c096d6f657004d348ae196e570d8e5cd3d33
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3220789613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63544d6be5ebc291b7d70a706beb66d1fe75748f948c8fd19f9ecafae109260a`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 23:12:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop';]
# Tue, 13 Oct 2026 23:12:57 GMT
ENV MONGO_VERSION=9.0.2
# Tue, 13 Oct 2026 23:12:58 GMT
ENV MONGO_DOWNLOAD_URL=https://fastdl.mongodb.org/windows/mongodb-windows-x86_64-9.0.2-signed.msi
# Tue, 13 Oct 2026 23:12:59 GMT
ENV MONGO_DOWNLOAD_SHA256=4b13e5e9de98e9ccf6e5589031e6ff969ef9193916d55b6b4b89edf60511f189
# Tue, 13 Oct 2026 23:14:56 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:MONGO_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	(New-Object System.Net.WebClient).DownloadFile($env:MONGO_DOWNLOAD_URL, 'mongo.msi'); 		if ($env:MONGO_DOWNLOAD_SHA256) { 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:MONGO_DOWNLOAD_SHA256); 		if ((Get-FileHash mongo.msi -Algorithm sha256).Hash -ne $env:MONGO_DOWNLOAD_SHA256) { 			Write-Host 'FAILED!'; 			exit 1; 		}; 	}; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'mongo.msi', 			'/quiet', 			'/qn', 			'/l*v', 'install.log', 			'INSTALLLOCATION=C:\mongodb', 			'ADDLOCAL=MiscellaneousTools,Router,ServerNoService' 		); 	if (-Not (Test-Path C:\mongodb\bin\mongod.exe -PathType Leaf)) { 		Write-Host 'Installer failed!'; 		Get-Content install.log; 		exit 1; 	}; 	Remove-Item install.log; 		$env:PATH = 'C:\mongodb\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  mongod --version'; mongod --version; 		Write-Host 'Removing ...'; 	Remove-Item C:\windows\installer\*.msi -Force; 	Remove-Item mongo.msi -Force; 		Write-Host 'Complete.';
# Tue, 13 Oct 2026 23:14:59 GMT
VOLUME [C:\data\db C:\data\configdb]
# Tue, 13 Oct 2026 23:14:59 GMT
EXPOSE 27017
# Tue, 13 Oct 2026 23:15:01 GMT
CMD ["mongod" "--bind_ip_all"]
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
	-	`sha256:b64fa0914826653dcbc144c82e4f3476df0b66c6237e9871095eddf7c54a668e`  
		Last Modified: Tue, 13 Oct 2026 23:15:14 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59807b7001a5c67e4ecc5877a1b002b243ddd04e8d7ec4404d9a1b2c95097897`  
		Last Modified: Tue, 13 Oct 2026 23:15:14 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34d42d30c8a8a39be91ce09c94ef95d7e5c2ecc13864229b1cf7492083b8ed9`  
		Last Modified: Tue, 13 Oct 2026 23:15:14 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89441d58109a55cc9a414440b4a34e20a6d72664df27363519b62a722032dc5`  
		Last Modified: Tue, 13 Oct 2026 23:15:13 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2396d6940046d62567fac504558d785b4077edaff8ad17d0c61843f2c88192a`  
		Last Modified: Tue, 13 Oct 2026 23:16:29 GMT  
		Size: 994.5 MB (994494937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8da07dda653925da39bdb0b0e42cc16824853240a5456e7a28c92475635d8c`  
		Last Modified: Tue, 13 Oct 2026 23:15:13 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19100833bb8c2935a5a467d747a23f538fffdf7b8d3010ede9fd53e9e625a0c2`  
		Last Modified: Tue, 13 Oct 2026 23:15:13 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b9c958766e023e766c132351a062bef30f2c9e106e496bea520ff127187111`  
		Last Modified: Tue, 13 Oct 2026 23:15:13 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
