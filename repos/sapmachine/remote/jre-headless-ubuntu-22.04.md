## `sapmachine:jre-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:c23e956dd5a1164f0607cbb8fbb2e752e1ab14363c2ce85ada74aacd4a4df703
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jre-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:8266434e4bb32d2bf65aceea32d12d57349bfbf4565d95491cd1d731b3851c51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.0 MB (89042414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebc7fc68567245350d18fd762c134c27b8956523514f4cec9b697b11932e2d71`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:31:35 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 20 Nov 2026 03:31:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2a8909a64c47e8c185472eda3a6853797db43d5e83ebb4e283e5725a3dc57c0`  
		Last Modified: Fri, 20 Nov 2026 03:31:48 GMT  
		Size: 59.0 MB (58972599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5fdf1e58934363890e9841e1024e59621ad7d4aa99e0d078c58305b1fff7a3ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e119a0e92471639ddcbb9cb6577e2b03a0406aa56b4f8e0480f890b36a51a76`

```dockerfile
```

-	Layers:
	-	`sha256:e8c7881018b084e449e90b7cc7d9766b516ab1e4819cca2d3cee6fdea3032c50`  
		Last Modified: Fri, 20 Nov 2026 03:31:46 GMT  
		Size: 2.3 MB (2300538 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d47a93f4e90ec87ebe2563db55635c7effd9574a7d175015dfc7c41cff7a7ba0`  
		Last Modified: Fri, 20 Nov 2026 03:31:46 GMT  
		Size: 10.3 KB (10316 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:d707ff28b1e1cbdb324b107b2f61ce2c159f137c2fef384167e6538d045c427f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.0 MB (85981423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4e0b868d2fe45036b1c9a11877b1ec048f2d351269720041f01cb4a9d63fbac`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:33:25 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:33:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 20 Nov 2026 03:33:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208c058311ac0708c46bcb4884b86c8399e34eea83ffe0a63c2d61e6193823df`  
		Last Modified: Fri, 20 Nov 2026 03:33:38 GMT  
		Size: 58.0 MB (57980022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c1ab195ab808325c9db59e72dd123e2dd74092d38783100af3e6a0d33501806b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2310675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1207449dd9d9b5277e5f297b7704bc9022ebe2f3f5836820d469dfd2dd3a2f03`

```dockerfile
```

-	Layers:
	-	`sha256:f5ef1239c968f75f8191d7ce2f22d2817098816bc93da961c4ddb7b570dc26bd`  
		Last Modified: Fri, 20 Nov 2026 03:33:37 GMT  
		Size: 2.3 MB (2300231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da78d2a43cf944e0bac8ac08a5980853b7aabfe3c7ac095981a75dfb3f279347`  
		Last Modified: Fri, 20 Nov 2026 03:33:37 GMT  
		Size: 10.4 KB (10444 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:1c147fbe69daf26f0c3e5ded1ee2bc3a376782569960fae05376d95a7111dbd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.0 MB (93040540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e026650b9302761d875c6032b7b278a2ec5180d5f2593c20afe4d1b0f921eb28`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:20:22 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:20:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:20:22 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:25 GMT
ADD file:864e29ad8b1d92dce321e0401fe4ef4bbac836267e9967e73cb6394dc831cccb in / 
# Tue, 17 Nov 2026 09:20:26 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 05:13:00 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre-headless=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:13:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 20 Nov 2026 05:13:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a7ab357fd9dc2ccd4042230501ebce1346ff82314b13a35f8a4382786359aba5`  
		Last Modified: Tue, 17 Nov 2026 10:29:26 GMT  
		Size: 35.0 MB (35021662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f40f4cffed8ba453fbdef15bb17945edf287ed2bbd46c9842623daa1700a2caf`  
		Last Modified: Fri, 20 Nov 2026 05:13:28 GMT  
		Size: 58.0 MB (58018878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:098da8b27d9c8868ae26555ce88842768e71f7a332a027c0d71d82612ec28d2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43dfbceb276392be2d0bc8d196710e9b238d03e60244f2dfa7e3753474770066`

```dockerfile
```

-	Layers:
	-	`sha256:90b2908f9b3b7d694eb3b775650468d07c1e52eaea2f5a9234d34200f5eaca44`  
		Last Modified: Fri, 20 Nov 2026 05:13:26 GMT  
		Size: 2.3 MB (2299362 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48ad8b2972402a9d8f187fe644775554c7fa4aa100bd86ddd7277b54223ade17`  
		Last Modified: Fri, 20 Nov 2026 05:13:26 GMT  
		Size: 10.4 KB (10372 bytes)  
		MIME: application/vnd.in-toto+json
