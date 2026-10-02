## `sapmachine:17-jre-ubuntu-noble`

```console
$ docker pull sapmachine@sha256:be716f206c2cfd7c75c3f575eec8b558cc78f8692957bda0f36e383d1e983018
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jre-ubuntu-noble` - linux; amd64

```console
$ docker pull sapmachine@sha256:5bae53304b39cf04cd43a88699dc0ac176e91d0cfa590cbf5aa4912294983d05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90223928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68d95fca3f49f72f7df7224e85ce9607cac33349e49cd9bba0e76881ca360a66`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:39:28 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:39:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Fri, 02 Oct 2026 01:39:28 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90fa83d7a9e32c80c4ab55ddeba4bf848192452c55d0e47118e8720c4ab49314`  
		Last Modified: Fri, 02 Oct 2026 01:39:42 GMT  
		Size: 60.5 MB (60459506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:90fc7877d7044ecdb7dd7e404c8f381e0f51945fe6ece1732345129dace4c146
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2531582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94b820d02bde53900945284be49395f245b23678b84e90d5ebde29c00b5101f9`

```dockerfile
```

-	Layers:
	-	`sha256:18cd93141feb3b34bc4b5f82f8ffc4092a8f09d16c645ed2a6c86c5d4ad0bfd1`  
		Last Modified: Fri, 02 Oct 2026 01:39:41 GMT  
		Size: 2.5 MB (2520780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79e1972447094247b1bae3d683ba0ff9c610105f9d395f58232d5219c8c58fbd`  
		Last Modified: Fri, 02 Oct 2026 01:39:41 GMT  
		Size: 10.8 KB (10802 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-ubuntu-noble` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:a278d5f4ea54eee7ce42491f322228a643b356551734ee778472ba7e443b41cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88728194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0542a158431a87429168168028a476138238d4e7730d9cc42b87f7fd4a6fe00`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:39:29 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:39:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Fri, 02 Oct 2026 01:39:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93f1be78750db8b823d4e23b95f134f00166e3f9b6824a97bb09a978dd7c2036`  
		Last Modified: Fri, 02 Oct 2026 01:39:43 GMT  
		Size: 59.8 MB (59788107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a35c8e2fc62acc07a5c9bd8856f8b67d4a8d67193cb2b961808c69fa4e2917ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2532250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49a512cacb1837ce87abe7e35d8a4577b3be8608ff23c059f018303afb39c2ba`

```dockerfile
```

-	Layers:
	-	`sha256:08226a1cfa3a7e24a309ce4c89bccdc9945c8181b53b14b2c287a29d76a5e393`  
		Last Modified: Fri, 02 Oct 2026 01:39:41 GMT  
		Size: 2.5 MB (2521296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15cac8928c37ef1872bd4660e33d83e04f81a8a3658458c53f12d54a125d97a2`  
		Last Modified: Fri, 02 Oct 2026 01:39:41 GMT  
		Size: 11.0 KB (10954 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jre-ubuntu-noble` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:f10bdffe7f023a4b5f76696e1207e09605134fe96e8a67906868d0406e1f2593
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.6 MB (94614344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02e9772b88a6ed250da2e3a77e7b3720da0ce455ac4194820462f7b70fb8787f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 05:51:56 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jre=17.0.20.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Fri, 02 Oct 2026 05:51:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f437937a3fd29967c8e12d92fbf3b03055677e5e97bcda9eadf75de1cd83939`  
		Last Modified: Fri, 02 Oct 2026 05:52:27 GMT  
		Size: 60.2 MB (60237835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-ubuntu-noble` - unknown; unknown

```console
$ docker pull sapmachine@sha256:4db0424abd12f8c6261f5e827031d4a975b6198b65f86ddbcac36b2402bd3549
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2531148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:218976bc100e38579e707c48db08e0a655196ec83a1ccacd60982eac0033a608`

```dockerfile
```

-	Layers:
	-	`sha256:5499f1f4fcc20c41184100ea51ca8c4a08169204888c985f6d8bee44ce3022c1`  
		Last Modified: Fri, 02 Oct 2026 05:52:25 GMT  
		Size: 2.5 MB (2520278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3259af38c30593874151f2a5a0f1c00e2e8b580d066277f02035ebab481f4c32`  
		Last Modified: Fri, 02 Oct 2026 05:52:25 GMT  
		Size: 10.9 KB (10870 bytes)  
		MIME: application/vnd.in-toto+json
