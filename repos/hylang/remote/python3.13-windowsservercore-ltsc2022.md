## `hylang:python3.13-windowsservercore-ltsc2022`

```console
$ docker pull hylang@sha256:c039690ca4ecff7f556978450b229df341e7c8c2ae4a8b5b4c56016c193c45af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5386; amd64

### `hylang:python3.13-windowsservercore-ltsc2022` - windows version 10.0.20348.5386; amd64

```console
$ docker pull hylang@sha256:8d56e5a60205960364d9b28d419944cddf24e5263d6bbb7d836d8ecd81aff450
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2225023416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d9c8ea94b4d84a4a452783e3d32fda2cc19cfca47cf820df81ed94d416b09e4`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:05:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:30:38 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 15 Jul 2026 23:30:38 GMT
ENV PYTHON_VERSION=3.13.14
# Wed, 15 Jul 2026 23:30:39 GMT
ENV PYTHON_SHA256=c54d9b9bbb8a36e6489363ddd01139707fd781d72f1f9e90c7ec65d0061368e0
# Wed, 15 Jul 2026 23:31:13 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:31:14 GMT
CMD ["python"]
# Wed, 05 Aug 2026 16:03:03 GMT
ENV HY_VERSION=1.3.1
# Wed, 05 Aug 2026 16:03:04 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 16:03:40 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 05 Aug 2026 16:03:41 GMT
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
	-	`sha256:dcdf0d30539dd8057458012ecb38d8b289902f8ebed3f36a067d7a932499d490`  
		Last Modified: Wed, 15 Jul 2026 23:09:52 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79e285ead0e139dfedce9f482891d03aafa93aa80a96f22344d6ff7c1da6921`  
		Last Modified: Wed, 15 Jul 2026 23:31:17 GMT  
		Size: 1.3 KB (1317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e21063d49774b6e7ef76bdb84488ea3404bfee9c38aa83f48e04896fb53ec8a`  
		Last Modified: Wed, 15 Jul 2026 23:31:17 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f47efd22a8c76ddc5d00287f01aca82d76bf8050b01d36b3489bd5c80e8c512`  
		Last Modified: Wed, 15 Jul 2026 23:31:17 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82510f2edb402302d3bc76d840007585a765883afee3051e695e1a00bbe03393`  
		Last Modified: Wed, 15 Jul 2026 23:31:22 GMT  
		Size: 59.2 MB (59181680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0395bc16e86afdd2d34a58d3a20209f5400130a03cad43df68dc81d6fb78d1`  
		Last Modified: Wed, 15 Jul 2026 23:31:18 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae976e51ca2ee88d59b741e4d5f4d52515953964e2002595578fd44da21fce31`  
		Last Modified: Wed, 05 Aug 2026 16:03:45 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4f21be911ae915002c129cb5aa71317bfc2b77a1368b908107140ee0c619a3`  
		Last Modified: Wed, 05 Aug 2026 16:03:45 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90730cf44c4362bc7aa71eb1e6dd42753ca50af762a90e6524995c1a2a24e0d3`  
		Last Modified: Wed, 05 Aug 2026 16:03:47 GMT  
		Size: 8.3 MB (8278107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8feb2febb4635f3cdff6a608370722fc602601a7b812d9443a3fa1bb3f539522`  
		Last Modified: Wed, 05 Aug 2026 16:03:45 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
