## `hylang:windowsservercore-ltsc2022`

```console
$ docker pull hylang@sha256:1120996a2a734f52cd8a5c187124f01875f1afbc407163627b568e4daba7239c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `hylang:windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull hylang@sha256:579afa705e1b0282d62d746caa09ee8480122fd67fdc87625c86b9196c69f14d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2228495908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:090272c13bcb70a6bb5d444608e30dde10ba0a7c46503b58a7755686db8f3962`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:03:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:30:28 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 15 Jul 2026 23:30:28 GMT
ENV PYTHON_VERSION=3.14.6
# Wed, 15 Jul 2026 23:30:29 GMT
ENV PYTHON_SHA256=14b3e9a710a3fcf0bd9b55ab6b60412bd91227563f813fc49040cabc0209e0bd
# Wed, 15 Jul 2026 23:31:05 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:31:05 GMT
CMD ["python"]
# Wed, 05 Aug 2026 16:00:39 GMT
ENV HY_VERSION=1.3.1
# Wed, 05 Aug 2026 16:00:42 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 16:02:26 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 05 Aug 2026 16:02:27 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd99cda305ab1db9d8da0e66cf144dcebbcf0c3a5325391dc82055197d387130`  
		Last Modified: Wed, 15 Jul 2026 23:07:15 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56baaa2d3b33afa6168216e5cc6f5314800f5744f7ef56a254418827383d1d72`  
		Last Modified: Wed, 15 Jul 2026 23:31:10 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174ba11e22d5b854667be733d034a3f9e53b57f23e1478e44a29f2a72bdd1296`  
		Last Modified: Wed, 15 Jul 2026 23:31:10 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d7116a0536349fb8ca2f639dedc9f5748db183aceecd1f74f1a873ca13ac56`  
		Last Modified: Wed, 15 Jul 2026 23:31:10 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404aba73f993e21d65b699a4426d464a53c8b3ad51b6275976899c5b5031ceac`  
		Last Modified: Wed, 15 Jul 2026 23:31:16 GMT  
		Size: 62.6 MB (62633372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b7be1a4fd29ac78dff7e95220b1abdf0e1c59b7fa3fbeac1a60d4e16d617e1`  
		Last Modified: Wed, 15 Jul 2026 23:31:10 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c6c78cd2335541851669b39fec0078804c14094d6eda8f83d0923ffd4de0d6`  
		Last Modified: Wed, 05 Aug 2026 16:02:32 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95694380d76c211d9e9bb4d0de9bc3484fa80b040d3ece0bb6161b8ea22e25c`  
		Last Modified: Wed, 05 Aug 2026 16:02:32 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e222c35a472b43836ec7806ec87c5cf4c7eb65f6943e2fcb6ccdd3d9ba927ff`  
		Last Modified: Wed, 05 Aug 2026 16:02:33 GMT  
		Size: 8.3 MB (8298900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11d496371fc14a10aa53160ace223a33bb08f7ea99b6bde2672c24261189dbf8`  
		Last Modified: Wed, 05 Aug 2026 16:02:32 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
