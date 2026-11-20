## `sapmachine:25-jre-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:a9c8ba535a25ac5c1a1b3b19b4246c1cf0ff08e2db0c1d3d5caa90ef06cd34f8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-jre-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:06e65fcd0287da9f3699023a0262e2350bd6e5646cb5d4ae0de7a75c352e2dc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89070173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e975c568776422c327ef20c8468cf16c11ee5d5b64688775e633b3fba820d84e`
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
# Fri, 20 Nov 2026 03:32:32 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 20 Nov 2026 03:32:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53a8e3a1dbf3ae15b2b385d0bb5c508b65da7bdbe71332f2adf61e4f145972b`  
		Last Modified: Fri, 20 Nov 2026 03:32:46 GMT  
		Size: 59.0 MB (59000358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:9d7101938dd6380a26cc38c9d2a0f492be3a678bf72e6e11c15abb9607228858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c778c0598868a8bbcee3f62231a0636943c2c4c2e4bed491c233bfc25157084`

```dockerfile
```

-	Layers:
	-	`sha256:1b41015a1569fcd5c2e65a5bc4394f854d70427d5ae171cdd48b07b97fb37192`  
		Last Modified: Fri, 20 Nov 2026 03:32:44 GMT  
		Size: 2.3 MB (2302445 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:114bb90e285b6ec1175f7562d65f4b23c39ab53a62011b23dcfcdf418ea7d680`  
		Last Modified: Fri, 20 Nov 2026 03:32:44 GMT  
		Size: 10.3 KB (10332 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:005d3e7000b99ac858d5a8a7a6a66c1899e990df72e473555f52c5cc29395bfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.9 MB (85909990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76c5247bd982d59f9405984510ecb93b3f7c3180ee2899b9b4d6ff91ebc32d7f`
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
# Fri, 20 Nov 2026 03:34:32 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:34:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 20 Nov 2026 03:34:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:932968ae497d7147d7da47c24c0897b3646958f838f4c2c9c4a5feafc10c10a0`  
		Last Modified: Fri, 20 Nov 2026 03:34:45 GMT  
		Size: 57.9 MB (57908589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d698721bfb67cb3ec85b3bab4c107bfa261afd6efaa9327a22a2165e85954d1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61afd8439600aac9057f53dc8f66c52060d107220a64509d9bb2184ec270af43`

```dockerfile
```

-	Layers:
	-	`sha256:4ad881e9655c69992e0eae3d7c576ab8ebe2861d4a9f7dab6ea989d409f7f095`  
		Last Modified: Fri, 20 Nov 2026 03:34:43 GMT  
		Size: 2.3 MB (2302138 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3c5b78da2d9ac30d2e43942b11b52482d34badb0cf5385aaa6efb260e2648b4`  
		Last Modified: Fri, 20 Nov 2026 03:34:43 GMT  
		Size: 10.5 KB (10460 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-jre-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:d0c8913643c087b6be8530a9caa92a83bda49d48759929bec62c30850dbd97b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.1 MB (92134143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38d44cf468dd5d73217e4a46f74505d97637d14c942e887d1e482ef2b29b7d74`
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
# Fri, 20 Nov 2026 05:15:48 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre-headless=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:15:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 20 Nov 2026 05:15:48 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a7ab357fd9dc2ccd4042230501ebce1346ff82314b13a35f8a4382786359aba5`  
		Last Modified: Tue, 17 Nov 2026 10:29:26 GMT  
		Size: 35.0 MB (35021662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e2445f4437cb64e98bb6140a61b5e61e71b8321a0428ba96df09e7376005c97`  
		Last Modified: Fri, 20 Nov 2026 05:16:14 GMT  
		Size: 57.1 MB (57112481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-jre-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:9204ff6cf4b98421be69a4f6cdf3e2d1f36aab60e2550996e352e5d10f38633b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2311657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcf360593ec34655998c83272038a382a46cff3b317d3be2b676bfa2e19ddc12`

```dockerfile
```

-	Layers:
	-	`sha256:d954f9c66fa160607ac9297336a69a546392826038bc0892faa10e7d8d755090`  
		Last Modified: Fri, 20 Nov 2026 05:16:13 GMT  
		Size: 2.3 MB (2301269 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:458e314adfe05eac73006c8dcc1df8f3641ad7f050ebbf098d9773eb89312541`  
		Last Modified: Fri, 20 Nov 2026 05:16:13 GMT  
		Size: 10.4 KB (10388 bytes)  
		MIME: application/vnd.in-toto+json
