## `hylang:1-python3.14-windowsservercore-ltsc2022`

```console
$ docker pull hylang@sha256:960f5e01d739d62f7a5e691df938a0428a388e96274909b03651a7042bf455fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `hylang:1-python3.14-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull hylang@sha256:902ccfaedf03edca46ef68145784219af34d0ef6e2052cd07414e3d1396006e5
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2303494402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f087569248c66942da48721ec4c27c82989ba82a6c1b9414343eb2b5e85b8b5`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Wed, 21 Oct 2026 22:11:41 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Oct 2026 22:30:40 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 21 Oct 2026 22:32:08 GMT
ENV PYTHON_VERSION=3.14.9
# Wed, 21 Oct 2026 22:32:08 GMT
ENV PYTHON_SHA256=a247a0b612244a803f507b39fb7121e3602e4160d59c3b99d98e735289c53394
# Wed, 21 Oct 2026 22:32:40 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 21 Oct 2026 22:32:41 GMT
CMD ["python"]
# Wed, 21 Oct 2026 22:45:51 GMT
ENV HY_VERSION=1.3.1
# Wed, 21 Oct 2026 22:45:54 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 21 Oct 2026 22:47:40 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 21 Oct 2026 22:47:41 GMT
CMD ["hy"]
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
	-	`sha256:d50c6aba90dbb9bb75beba9b047d772d576ae55d3a87354de75f0b41ad837331`  
		Last Modified: Wed, 21 Oct 2026 22:17:19 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83678c2c7603b9f41d74f599899768084fae18f484d40d6ac75516ccc2a3fd8b`  
		Last Modified: Wed, 21 Oct 2026 22:31:46 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144b02e2a905d70b1e4d38eb893cf482d66b9a9eff518e2dd50365deaee574f1`  
		Last Modified: Wed, 21 Oct 2026 22:32:46 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207f28b8e9d048c4a3f5f7d5c579c3bcf23d0b7f79fefe0e99894e0e194c2b27`  
		Last Modified: Wed, 21 Oct 2026 22:32:46 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e7be21476304f6c66b8559b3b5c7681bd73cb9e71e21cd530d36266a7666d61`  
		Last Modified: Wed, 21 Oct 2026 22:32:51 GMT  
		Size: 69.0 MB (69046334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07804ec435d8ed10e2b980833feb2b08f6ba06a51d6c6072060361d68adf7a85`  
		Last Modified: Wed, 21 Oct 2026 22:32:46 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b471c591199653d221bae066ce5c8c2475826a7020d5d23dc851f151b50441`  
		Last Modified: Wed, 21 Oct 2026 22:47:46 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed39a5b09ac399f8b378697bd9dac890c9c0d48d85f3bfadf62cc178c0583406`  
		Last Modified: Wed, 21 Oct 2026 22:47:46 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197a2f5562da0f3d842e9a205701561eac00816197fda3f7a3aa0583725150c2`  
		Last Modified: Wed, 21 Oct 2026 22:47:47 GMT  
		Size: 8.2 MB (8152055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a813a333e1485399d5f832ab1a2de478914d37bd3427d491c628981e39ffae`  
		Last Modified: Wed, 21 Oct 2026 22:47:46 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
