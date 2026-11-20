## `sapmachine:27-jdk-headless-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:6d46b2f150dfcf1aa6f1d5fb6c90b81d24dbb17407404c3508f904d3b6e01bf2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:27-jdk-headless-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:4d5d0dfec6fa0660c2609a01fe74caf687ecedefb21670f0be1e17531825a768
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167826159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b122610a6763abe32cab84671858b34413c71d3e05a4144c4878d86000b5f8`
-	Default Command: `["jshell"]`

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
# Fri, 20 Nov 2026 03:31:49 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:31:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 20 Nov 2026 03:31:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d3460198d6e2946ef739fc9047371c8a157f0f572957a62253a8320724b1419`  
		Last Modified: Fri, 20 Nov 2026 03:32:08 GMT  
		Size: 137.8 MB (137756344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:98ca4b6719adccb2c46a63c90b42a9e9020d6ec9bdb094aff9bc08d6619e8e35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2332227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d053953a112d9ccfbe18f7712aeac8cc5628656a9eb7a7e9196f58fae88e2fa`

```dockerfile
```

-	Layers:
	-	`sha256:285ba240d165192942aebfd1be9e9c0c7e9ec87e27c5b20a650717da52ebc955`  
		Last Modified: Fri, 20 Nov 2026 03:32:05 GMT  
		Size: 2.3 MB (2321910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb9df549edebf2d51902b6cf65d53897a61d4c071f194c7b5ed6f3c32af58d11`  
		Last Modified: Fri, 20 Nov 2026 03:32:05 GMT  
		Size: 10.3 KB (10317 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-headless-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:7dbaa3a7e5b53dc028f915b0f34ccdd5c2aa147a3b68fa5098be42eb079c2141
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.8 MB (164800985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:487e6043bb8bbcea55126af3cf61c5b329a9c9956d5d5291687813801d8d89ad`
-	Default Command: `["jshell"]`

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
# Fri, 20 Nov 2026 03:33:44 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:33:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 20 Nov 2026 03:33:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2593454d7871370bd4d4c3aee7d24e7e91b3a167d6b7935f111613d4c8fd1d00`  
		Last Modified: Fri, 20 Nov 2026 03:34:02 GMT  
		Size: 136.8 MB (136799584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:723fe2737d45054b29de1dd61742bd3876afd24c3934b1d5252491d61716b602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2332048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79668a1b1b97c85a621b4f7e47c83713306215689fedc4941a1e321d00ca1916`

```dockerfile
```

-	Layers:
	-	`sha256:ac6086b9d6a116258ab670552e8862c54f8175c9cee94751bad7c1d8d00b90b7`  
		Last Modified: Fri, 20 Nov 2026 03:33:59 GMT  
		Size: 2.3 MB (2321603 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:610d474c5373e7839fe182647058cab1360ef994b35decdf17262e9ddc12cb2f`  
		Last Modified: Fri, 20 Nov 2026 03:33:59 GMT  
		Size: 10.4 KB (10445 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:27-jdk-headless-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:5ac51d8a0814d62c82f43e95fb337a797933a8da1723321f2a123878a54286c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.8 MB (171760314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d11663901723f5a4c519980feadb7ec08c5422993f5b323af0825ae1e956ab9b`
-	Default Command: `["jshell"]`

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
# Fri, 20 Nov 2026 05:14:24 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jdk-headless=27.0.1.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 05:14:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 20 Nov 2026 05:14:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a7ab357fd9dc2ccd4042230501ebce1346ff82314b13a35f8a4382786359aba5`  
		Last Modified: Tue, 17 Nov 2026 10:29:26 GMT  
		Size: 35.0 MB (35021662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78ca0f266eccc38ed05831db890d18b52a5554c652adfae7b6e67db8fe26fb9b`  
		Last Modified: Fri, 20 Nov 2026 05:15:02 GMT  
		Size: 136.7 MB (136738652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:27-jdk-headless-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:de363483f5ea3dce9343138f6420dacd8e8a9d62ff653957e996a8e66f91750b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2331107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48984562075a164b32297dc66aba2163c702c7c12486768482279bedd3ebc84d`

```dockerfile
```

-	Layers:
	-	`sha256:3ce863fbff6dd38037bef272b797b4855ff2b4841ea6ebd8c1b51372df11eac4`  
		Last Modified: Fri, 20 Nov 2026 05:14:58 GMT  
		Size: 2.3 MB (2320734 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6e8d225840884d79a7503618a3a6d136e4a954c4bf003a6a59ea82e28024eae`  
		Last Modified: Fri, 20 Nov 2026 05:14:58 GMT  
		Size: 10.4 KB (10373 bytes)  
		MIME: application/vnd.in-toto+json
