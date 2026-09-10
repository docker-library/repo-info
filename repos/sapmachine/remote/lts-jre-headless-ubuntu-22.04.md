## `sapmachine:lts-jre-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:c6d005f42590e1a6f5492410bd4f3e408388cd744089c7df1df6f63d9ddf794b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jre-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:4a69216f8251126d29406ecdf391e1b1b94f7232d5cfcfefa5e066945064a9c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88677004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e79b04091df3099c46b23cf7cf725381367ecb855618a5949701de58e621a88`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:41:05 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:41:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 09 Sep 2026 02:41:05 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a03cfd984513b9d1018bb43b527f77ea4f9f55fe660a049362e604388df44ce`  
		Last Modified: Wed, 09 Sep 2026 02:41:17 GMT  
		Size: 58.9 MB (58926753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:71d47299888c341b55e47160279330ef1d24fac18ea4e7c7dd57061590d87fd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61b6ea3cb91e3a27c54d6006dc5fbd6ffdb690ba0e4003916b93baf49942c1d7`

```dockerfile
```

-	Layers:
	-	`sha256:01a0cc3b21e26a362b1f092773f6a46e46d77b47e49e31c3b9b46e87d60db791`  
		Last Modified: Wed, 09 Sep 2026 02:41:16 GMT  
		Size: 2.3 MB (2301797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:154d8114cd036e1a226510ab111725769ff01c16bf1ecbccf604a2ee7c99a8d9`  
		Last Modified: Wed, 09 Sep 2026 02:41:16 GMT  
		Size: 10.3 KB (10332 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:d8a70d085f22d35c6c2fab19351cdfee83e724c4da80fd9a4751f6357664f044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.5 MB (85528985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b239dff684319cb85bc5466043addc59458ba92cf541c005be2905ea941463b`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:40:39 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 09 Sep 2026 01:40:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38fdfddf798045334544b93abcc03e001a36152a33d400a3c108e74656d64049`  
		Last Modified: Wed, 09 Sep 2026 01:40:52 GMT  
		Size: 57.8 MB (57846238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8adf6aef64306b0431d8f53eccbf10a45a2ad709d2eadedb193dca0dfad149d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2873252de93d19346ecf1ffe91b5dd08e56ee2e65be0bf21dd7c976920ed8287`

```dockerfile
```

-	Layers:
	-	`sha256:5644a38e3cccd55e43116b5557fe12b6c0d1328b25032944e8b4a0d258033f3b`  
		Last Modified: Wed, 09 Sep 2026 01:40:51 GMT  
		Size: 2.3 MB (2301490 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36186ae8a41516a86251f46d61fd76d4afefdb9558a4e760b11f9c54baa728ad`  
		Last Modified: Wed, 09 Sep 2026 01:40:51 GMT  
		Size: 10.5 KB (10460 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:ceae7c8f9680a1253fce1423126a353c5fa5a188a43fd0bc7c1fe5867bdfe1df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.6 MB (92574034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c89515753e984d7bf8fb031c6a3d9f4617f1ac4e358e22180d344bab59887e3`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:57:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:57:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:57:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:57:55 GMT
ADD file:432b9684ec0569be2be149e91ac77c16c05d7cfbb3e9cfbb7fd24d3ec4e3542c in / 
# Thu, 03 Sep 2026 12:57:55 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 04:04:21 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:04:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Wed, 09 Sep 2026 04:04:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c877d32219bcdf154e59e428354bb8b4ef37dc89c8a726976257bfde327d08b`  
		Last Modified: Wed, 09 Sep 2026 04:05:13 GMT  
		Size: 57.9 MB (57871355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:7134bc3e5e2b8feb65863d2f836c4ce3ee14f4f8d119c261f4a4e7197a55a0fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79ac9e51f9cfdc418f34af8cf450d761975c9a421c3798fc2e146ba2133b5350`

```dockerfile
```

-	Layers:
	-	`sha256:8b3d1b11fe27112e7a5e827a74357bea8d536cfd6dcf0d846ac096558808eb8d`  
		Last Modified: Wed, 09 Sep 2026 04:05:11 GMT  
		Size: 2.3 MB (2300621 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55dbcbeccef48e6420c8cfa41f932cb45875b91e27d272b5a9e6899b67902f59`  
		Last Modified: Wed, 09 Sep 2026 04:05:11 GMT  
		Size: 10.4 KB (10388 bytes)  
		MIME: application/vnd.in-toto+json
