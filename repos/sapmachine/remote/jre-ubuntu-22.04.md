## `sapmachine:jre-ubuntu-22.04`

```console
$ docker pull sapmachine@sha256:a9bcca71229c89f1a687d0728ce4c27a9dce06a8df7a13ec8056adf99029c3d1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:jre-ubuntu-22.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:5a3b5fd422e3e62e761f096feba933f4921bde1fe2d73f381268f642541b9109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90213583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09d852f33cd46fb918b66369a498b3fb7485aea2980622ea28659efcda067b20`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:37:34 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 02 Oct 2026 01:37:34 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c07277d73f9ed2c24750946ec10b0e8e3f3254edab9e97691324eef5f7145b`  
		Last Modified: Fri, 02 Oct 2026 01:37:47 GMT  
		Size: 60.5 MB (60461956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:db5c84ced2d163b7b671912887a045dc0444bbd6d5233b992e39fb5a8c9608ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2560663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07882869fa74b4670463808b0fb99e910e2deac72a8ec3d5e65eaf6ff2f82fc9`

```dockerfile
```

-	Layers:
	-	`sha256:9a9536a0ce7c4e69e4521e6e4fe43c3a17c35cc36a200d45189edf73f59fe390`  
		Last Modified: Fri, 02 Oct 2026 01:37:46 GMT  
		Size: 2.6 MB (2551196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:361b23393d0fcbf7aeeb59d498f55785b1e37b94fa1f02c3f6286aa0e7f59374`  
		Last Modified: Fri, 02 Oct 2026 01:37:45 GMT  
		Size: 9.5 KB (9467 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-ubuntu-22.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:4e9a6a44b931263348c6b83dc43d9993eb3bfad4ec4f9f073da331d6b9d98bf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.1 MB (87126534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2df18db765788bc08db326e2b8880b8a0e8b1a47f9b71d39a4ca05c989f75ea`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:37:32 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:37:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 02 Oct 2026 01:37:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64f19843a3930f7a9ce08c4e4accfcba5e3ae22f2b03183b8f198a2027bc525a`  
		Last Modified: Fri, 02 Oct 2026 01:37:46 GMT  
		Size: 59.4 MB (59442398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:c049d9ac75db362ce21e401e73d4f4ec9c313531798df6e54944719cdb62fb87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2560446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8754ed8a6de4ba41ce4690d24d0c9e767ef73e80c53d40a36bf4507b5ef47f9`

```dockerfile
```

-	Layers:
	-	`sha256:2f0f208aba33d439f6df85ef51236f187b00d251ddbbf5ebec12f8a78f11467d`  
		Last Modified: Fri, 02 Oct 2026 01:37:45 GMT  
		Size: 2.6 MB (2550875 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1486d831787b4bc436ec692634566fd75e2025c8da15423550ea9324d99fc58a`  
		Last Modified: Fri, 02 Oct 2026 01:37:45 GMT  
		Size: 9.6 KB (9571 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:jre-ubuntu-22.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:09887cfab3718c649c13e3bcac683bccaa1250fb21fde64118055898eea6eb62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.4 MB (94433970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec9bb8aebea833dbd3e0db033d2ef371cc2b498ca55bd0309c2c94656deeea34`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:59 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:59 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:25:02 GMT
ADD file:045fd400d3feed52639c1d69b89f522795380adacf8a6025e5d8b200e9a878dc in / 
# Thu, 24 Sep 2026 22:25:03 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 05:31:30 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-27-jre=27 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:31:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-27
# Fri, 02 Oct 2026 05:31:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4ec38ea96fb6e9976b5659ce60f9385aeabcf358353540676f8685df8f5439db`  
		Last Modified: Thu, 24 Sep 2026 23:36:25 GMT  
		Size: 34.7 MB (34703208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be7921f97bef8827418898ed5410357b794499289b72c11fd95ce9522a221dc`  
		Last Modified: Fri, 02 Oct 2026 05:32:00 GMT  
		Size: 59.7 MB (59730762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-ubuntu-22.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:b612986249c82547942f8318b96487c4d3a2c804d845b39be232c6e608ed3346
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2559609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ab778ee3def55c3d0815f9cc2fe5586e5499c8e2d02858e7558075d571a0db1`

```dockerfile
```

-	Layers:
	-	`sha256:311ca814aa36f11091633c04b7eea523ec62a92b2798058779d3348eb7e2f644`  
		Last Modified: Fri, 02 Oct 2026 05:31:58 GMT  
		Size: 2.6 MB (2550098 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:545d9d8c8938fd0099c7be4ee29173734bd8cb414524b887f1f9e9bb03b699b5`  
		Last Modified: Fri, 02 Oct 2026 05:31:58 GMT  
		Size: 9.5 KB (9511 bytes)  
		MIME: application/vnd.in-toto+json
