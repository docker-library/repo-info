## `hylang:1-python3.15-windowsservercore-ltsc2022`

```console
$ docker pull hylang@sha256:ec2c70d7c5b57177b6351cf4b1d1960d995ee567c69c69986b2015962ddcc8f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `hylang:1-python3.15-windowsservercore-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull hylang@sha256:4307ec5394025a51de5c5f542dbdf09799206b05258495970270a2434cee8ce4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2306421301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03d8fdb99c039565c6b5283da1871ce4ca0099595f120a21db9894e2fce95acc`
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
# Wed, 21 Oct 2026 22:30:41 GMT
ENV PYTHON_VERSION=3.15.1
# Wed, 21 Oct 2026 22:30:42 GMT
ENV PYTHON_SHA256=8b23839c6b2f3076fdff44c78d219a5393c7205f666cd95bd0c9a562bf8ea5db
# Wed, 21 Oct 2026 22:31:38 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 21 Oct 2026 22:31:39 GMT
CMD ["python"]
# Wed, 21 Oct 2026 22:45:16 GMT
ENV HY_VERSION=1.3.1
# Wed, 21 Oct 2026 22:45:16 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 21 Oct 2026 22:45:53 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 21 Oct 2026 22:45:54 GMT
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
	-	`sha256:e1a6173246ace242d39a22e9612d9dbd674aed2e88291169005627013225a1f4`  
		Last Modified: Wed, 21 Oct 2026 22:31:46 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445eb55949ad68eea62e75364d9a52fbb64f7a22d4a5f1e7d53dc48f5c2f08bf`  
		Last Modified: Wed, 21 Oct 2026 22:31:46 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b516c79ce4ce43df6d86a38543a12410a3d95b7dd2bf0e56b4dcfe98e80ecf0`  
		Last Modified: Wed, 21 Oct 2026 22:31:52 GMT  
		Size: 72.0 MB (72036517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678078bc2fb92bf2d65b220fbc5d0c8925e20418aa4a4096e39b2836a3a6aab9`  
		Last Modified: Wed, 21 Oct 2026 22:31:46 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1643ddc39d06a2d82e3e53f891d139833130e03f72966ea1fdc63b7794e2911c`  
		Last Modified: Wed, 21 Oct 2026 22:45:59 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6f2f8d12ebbb46c592c4f167fe86e4d6fb5284b8ace2905ee97f25d49075aa`  
		Last Modified: Wed, 21 Oct 2026 22:45:59 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b0457c3e6b81ac67815e1ee3117aa620ffb44ef68ae9f20c7b68cc8caeff80a`  
		Last Modified: Wed, 21 Oct 2026 22:46:00 GMT  
		Size: 8.1 MB (8088799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b523680b25b1f5ad743546ea28f2f4da46470fab7fdf71d777b75eb2768275db`  
		Last Modified: Wed, 21 Oct 2026 22:45:59 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
