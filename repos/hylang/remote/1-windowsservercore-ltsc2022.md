## `hylang:1-windowsservercore-ltsc2022`

```console
$ docker pull hylang@sha256:c5003bf25cac601027be82a2ab6fbcf6150d8f90f6051bf935934ea43132b4fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `hylang:1-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull hylang@sha256:c4a05edd0cf4814d427d9d9f07c811cf3ab922b2a8028c4189525351f172b57a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2296719142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9faefe5a9a68e5527cac30a059231ba5c2d17bc49f2a9a1916b5702e0a911ab`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 09 Sep 2026 22:45:32 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 09 Sep 2026 22:51:07 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 09 Sep 2026 22:51:07 GMT
ENV PYTHON_VERSION=3.14.7
# Wed, 09 Sep 2026 22:51:07 GMT
ENV PYTHON_SHA256=9d9eb2709ef81bf5cd30db3c2096bdbc4ea10087c22e62f27d356b36f6ae9649
# Wed, 09 Sep 2026 22:51:41 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 09 Sep 2026 22:51:42 GMT
CMD ["python"]
# Wed, 09 Sep 2026 23:27:30 GMT
ENV HY_VERSION=1.3.1
# Wed, 09 Sep 2026 23:27:30 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 09 Sep 2026 23:27:54 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 09 Sep 2026 23:27:54 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:141cf23bc6265944f15423e0cf748e7288f4d67da9faa51ab9f9d4a93c3a4af7`  
		Last Modified: Wed, 09 Sep 2026 22:46:57 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbcf53b5ff7c0664111fc7b3c59ef067f1bf4871c5efd9e657a386321f49b3e`  
		Last Modified: Wed, 09 Sep 2026 22:51:48 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f734361848c601bcdbfa477832502594199322592f0897e1c4d71bb5e90be52`  
		Last Modified: Wed, 09 Sep 2026 22:51:48 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d75107ed373c370fc74db9659e8e03b0323e4442a1a8c0009a9aed39ed234975`  
		Last Modified: Wed, 09 Sep 2026 22:51:48 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8919b81f3743a0e3c35da11e416d4066e074f30faaa8771758228e374d7edf5`  
		Last Modified: Wed, 09 Sep 2026 22:51:53 GMT  
		Size: 69.1 MB (69067907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242fa0190dbf21e878408762906f8d4f5c3ba5f18c478491ae9b646ee6b33363`  
		Last Modified: Wed, 09 Sep 2026 22:51:48 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3a5a85fec9182192bf74bf8b15d5d57c87a1414b520336f7bb563db2926b37a`  
		Last Modified: Wed, 09 Sep 2026 23:27:58 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f974a259157ba12fc8476a394aff55dfef85b0a569ccbb9bd0ad5a01ce251f06`  
		Last Modified: Wed, 09 Sep 2026 23:27:58 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc04a0d21a27b1a15fd206d5f4698ada10a65bb22da6faa9b0d4b3965631b897`  
		Last Modified: Wed, 09 Sep 2026 23:27:59 GMT  
		Size: 8.2 MB (8152090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eda7028ca192c53cfd266aa256a48fe13829a583e07d6d9894422afbcdc658d`  
		Last Modified: Wed, 09 Sep 2026 23:27:58 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
