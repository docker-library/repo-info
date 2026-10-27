## `hylang:pypy3.12-windowsservercore-ltsc2022`

```console
$ docker pull hylang@sha256:a5d0b14ae19c298b20d09125fbddc854d7d21840a03f62fde08fdb1ddb0e1a49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `hylang:pypy3.12-windowsservercore-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull hylang@sha256:34c8379f9c0b6f5d1d882ad479ff7bc4380424b5d1bec145a6bf3ef1d9dbe6ef
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2279807030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b55eb4cef6d8dba4f65f42df2d96a0a615851377ffb87f69c540be94f69f0ed6`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 25 Oct 2026 10:02:58 GMT
RUN Install update 10.0.20348.5773
# Tue, 27 Oct 2026 17:49:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 27 Oct 2026 18:09:35 GMT
RUN $newPath = ('C:\pypy;C:\pypy\Scripts;{0}' -f $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine); 	Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:09:45 GMT
RUN $url = 'https://download.microsoft.com/download/6/A/A/6AA4EDFF-645B-48C5-81CC-ED5963AEAD48/vc_redist.x64.exe'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'vc.exe'; 		$sha256 = 'da66717784c192f1004e856bbcf7b3e13b7bf3ea45932c48e4c9b9a50ca80965'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash vc.exe -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	Start-Process 		-NoNewWindow 		-Wait 		-FilePath .\vc.exe 		-ArgumentList @( 			'/install', 			'/quiet', 			'/norestart' 		); 		Write-Host 'Removing ...'; 	Remove-Item vc.exe -Force; 		Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:09:45 GMT
ENV PYPY_VERSION=8.0.1
# Tue, 27 Oct 2026 18:10:15 GMT
RUN $url = 'https://downloads.python.org/pypy/pypy3.12-v8.0.1-win64.zip'; 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'pypy.zip'; 		$sha256 = '225aa62deed1a624c86d5ffd03cc34615ff927b095d8508ad82593ee23ddce91'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash pypy.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive pypy.zip -DestinationPath C:\; 		Write-Host 'Removing ...'; 	Remove-Item pypy.zip -Force; 		Write-Host 'Renaming ...'; 	Rename-Item -Path C:\pypy3.12-v8.0.1-win64 -NewName C:\pypy; 		Write-Host 'Verifying install ("pypy --version") ...'; 	pypy --version; 		Write-Host 'Installing pip ...'; 	pypy -m ensurepip --default-pip; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Cleanup install ...'; 	Get-ChildItem 		-Path C:\pypy 		-Include @( 'test', 'tests' ) 		-Directory 		-Recurse 		| Remove-Item -Force -Recurse; 	Get-ChildItem 		-Path C:\pypy 		-Include @( '*.pyc', '*.pyo' ) 		-File 		-Recurse 		| Remove-Item -Force; 		Write-Host 'Complete.'
# Tue, 27 Oct 2026 18:10:16 GMT
CMD ["pypy"]
# Tue, 27 Oct 2026 19:20:09 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 19:20:09 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 19:20:54 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Tue, 27 Oct 2026 19:20:54 GMT
CMD ["hy"]
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
	-	`sha256:595092004383b652eb9dd6a9e61984c52d5b546af386f4d8e34bb346c0f86dd0`  
		Last Modified: Tue, 27 Oct 2026 17:50:41 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bf719628fdf6a415eb2dd5ae1c86c963336a5287001ee3d106ed5fe702259d`  
		Last Modified: Tue, 27 Oct 2026 18:10:22 GMT  
		Size: 338.5 KB (338547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5489eefe6077fef96834bc4b6727503d8215b9d678443bd1651bfaec7d6f10e7`  
		Last Modified: Tue, 27 Oct 2026 18:10:23 GMT  
		Size: 15.5 MB (15516649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7140cb91c140f20be528c14d8c761cb51a7c83be9c5aecd8840376c83127dd`  
		Last Modified: Tue, 27 Oct 2026 18:10:22 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a6257d8f780e2b632105c7b28ac1b6b201d8708892df52dfa9088bc13d381a`  
		Last Modified: Tue, 27 Oct 2026 18:10:25 GMT  
		Size: 30.3 MB (30315697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37cf7647f24f491ecc77c915f430ed8e9242f8163812e43930d2577b29045b44`  
		Last Modified: Tue, 27 Oct 2026 18:10:21 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81c26cbbbecfce2d7afe642fbeb238437b4f0a8748b1e6aff410e6cff005809b`  
		Last Modified: Tue, 27 Oct 2026 19:20:58 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ea02967874dbe500fe9d2e8e40a3861bd2b8c37e1d65c5eb1a3eb6e728f118`  
		Last Modified: Tue, 27 Oct 2026 19:20:58 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81e3a721cdfa6529c48ed8748039096ae4e1eb29ef9d17b4ce080be7358cc17e`  
		Last Modified: Tue, 27 Oct 2026 19:20:59 GMT  
		Size: 6.6 MB (6572138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60fc38a6fd7857b6e9b95486a5e4f7196ff88fd1312de2748d306d90a7139df`  
		Last Modified: Tue, 27 Oct 2026 19:20:58 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
