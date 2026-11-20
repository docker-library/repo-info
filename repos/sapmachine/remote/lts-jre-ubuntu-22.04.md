## `sapmachine:lts-jre-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:d40d2d259ef646f5b21c63dda16fafd288e30962160a0ccd5d76b40a75fc0a7f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:lts-jre-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:bdedad4a078013cd0ce2d1bf0050fbbfb7bd2e99c390c7b9bf0b3fa21eda1d6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.7 MB (90661881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:278de6c087af998c06fd0546aac9b749fd210e611cee0866d8bbbcf432369a9b`
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
# Fri, 20 Nov 2026 03:32:44 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:32:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 20 Nov 2026 03:32:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da76fae2b075598a2304c366718958fcb87a3fb1d38d83caa4b164b152003e2`  
		Last Modified: Fri, 20 Nov 2026 03:32:57 GMT  
		Size: 60.6 MB (60592066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:bb33271674b5f5a7b09ec175ef720ead5c4374f33ebfdf2c11ad6ef1acf3755f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2564656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aa61ba8eb33262def08e8e2efca867b986052cc3cd01764523f4c52ba7026ba`

```dockerfile
```

-	Layers:
	-	`sha256:9ff0a9f419dcf023e844fbbb957e70564c0ed9ea4a146e48273621a47e24f2ef`  
		Last Modified: Fri, 20 Nov 2026 03:32:56 GMT  
		Size: 2.6 MB (2554471 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1991e762639805af80a238c2e2f9877f8b4ef1474e53ed0ba450c9fc430642ce`  
		Last Modified: Fri, 20 Nov 2026 03:32:56 GMT  
		Size: 10.2 KB (10185 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:fd67664e0ff6dc36ab2d310fc860f54b5925ee22d2ee0d73c0b32d5acfdd04e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.5 MB (87501092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9befb87ff368f12fca99050302265d46c59109a07d5626afa2be3f8f98fb1c2d`
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
# Fri, 20 Nov 2026 03:34:38 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:34:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 20 Nov 2026 03:34:38 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:174f32ffa459eef174b58248728e05b2f20999c1e0be06efe26675f422080aa8`  
		Last Modified: Fri, 20 Nov 2026 03:34:52 GMT  
		Size: 59.5 MB (59499691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c7e2f83dcdeff976e3b0e4ccde4f77a109240ed3979965f1706e1331eadc3dfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2564487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae342a9c23fdc955d30bbd0fa31623f7688e7267065eb408ff721cd2117a7bb5`

```dockerfile
```

-	Layers:
	-	`sha256:b614a79e0cc50cf4f573f9821dbc10de219718cd6ddced8fb019572f99f951ce`  
		Last Modified: Fri, 20 Nov 2026 03:34:51 GMT  
		Size: 2.6 MB (2554174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83e700f921dd3f6b7160d8f70b7021fa4f7f74d8a4b3df7e64db580fec964166`  
		Last Modified: Fri, 20 Nov 2026 03:34:50 GMT  
		Size: 10.3 KB (10313 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:lts-jre-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:260be1f5af35a7283f9a65ecb5f7d4a1c8499890be122c5cda93e0825c3d6fa8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.9 MB (93889147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaded8cabb357195cf8856944a56ac51d12332398e953a5a8e3c1846b70881e2`
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
# Fri, 20 Nov 2026 05:16:39 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jre=25.0.5.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:16:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 20 Nov 2026 05:16:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a7ab357fd9dc2ccd4042230501ebce1346ff82314b13a35f8a4382786359aba5`  
		Last Modified: Tue, 17 Nov 2026 10:29:26 GMT  
		Size: 35.0 MB (35021662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35fac195be49aa787e53c6b79bdaf27dad934af5dee956267c8eba1825f66476`  
		Last Modified: Fri, 20 Nov 2026 05:17:10 GMT  
		Size: 58.9 MB (58867485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0f479245864bbf14954fc7aa8e2137f3bd02f8b2e6145b3b3cd1692d8dfd8552
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2563626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50663fc0412f2fec455a78e60b78da84c3820a6e0018296a40a608a0fe15ce9e`

```dockerfile
```

-	Layers:
	-	`sha256:0629766f7371a3abb5091f1884810f73d28db71e938ae8581f4292fe3d9802dd`  
		Last Modified: Fri, 20 Nov 2026 05:17:09 GMT  
		Size: 2.6 MB (2553385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f7e5b35a264eb7d85bf2941147d28819e6faf8be99d08b19f214df42cb45ed0`  
		Last Modified: Fri, 20 Nov 2026 05:17:08 GMT  
		Size: 10.2 KB (10241 bytes)  
		MIME: application/vnd.in-toto+json
