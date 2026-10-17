## `sapmachine:25-ubuntu-24.04`

```console
$ docker pull sapmachine@sha256:9137ce293b65140775508e3aacb44a57a00ac44bc41b0c9c715bf2a837821852
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:25-ubuntu-24.04` - linux; amd64

```console
$ docker pull sapmachine@sha256:1d730e50cc54863a8310f1579bf617547623ad1d84e78e48bed7cb3bd366e3f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.3 MB (257258615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc9cb87e0d1dea91f4824034a7c44c6b70841881f196e2dc6a149d0b2d7da33`
-	Default Command: `["jshell"]`

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
# Fri, 02 Oct 2026 01:38:15 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:38:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 02 Oct 2026 01:38:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e35c9d77473b42aad8f4679ecf3a478559016c50a04869f034002a80c7641d95`  
		Last Modified: Fri, 02 Oct 2026 01:38:37 GMT  
		Size: 227.5 MB (227494193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ad6259b2d56628d3bcc1341c6cf47474dc2e5b2055e7075e49c37cb56235f87c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2615183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:498116f85aaf3dd8f77a896a602a397b483cf30b76ae8656679740db93e2c4fb`

```dockerfile
```

-	Layers:
	-	`sha256:39fe5b77406b2f141210fbdd299878d94a96b370795c4459e6659f1586c61ce1`  
		Last Modified: Fri, 02 Oct 2026 01:38:33 GMT  
		Size: 2.6 MB (2599569 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14fc1adcc2e93d13e066d885840dfd7c4c9c75de3c7ffe9e5baf2d8024cd982e`  
		Last Modified: Fri, 02 Oct 2026 01:38:33 GMT  
		Size: 15.6 KB (15614 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-ubuntu-24.04` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:462a1bdd366895836f76eb0e7d2fdf50a2128b0f18dd97076370ca9515e2b0eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251807359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d4954a24847af692409ed1f556c7562a58cca65a8c035b7c128a7b50f534c63`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:39:10 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:39:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Sat, 17 Oct 2026 00:39:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce32725b0c2d659ed8a56bf7b1b1c88cc1ce9db088f4edd2827ab1de1214f1b`  
		Last Modified: Sat, 17 Oct 2026 00:39:33 GMT  
		Size: 222.9 MB (222867598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:5f5ff0c25ecc2935d117dfbee43392e558db72a21e2d0f33fca279d2b1c64e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2616232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35dc13883acb59c830cd71af294efbd6fc8772bab6ed17f6048681194eb552dc`

```dockerfile
```

-	Layers:
	-	`sha256:28a6023cbebb137a7492da32b69519d4b57d93f5f4efe69415ab47c5cb42fbe6`  
		Last Modified: Sat, 17 Oct 2026 00:39:29 GMT  
		Size: 2.6 MB (2600286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e872c25112ccf6540e6f07b5ff2b2fcfbeef3df529dd4488fa2de00d0a724cf`  
		Last Modified: Sat, 17 Oct 2026 00:39:29 GMT  
		Size: 15.9 KB (15946 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:25-ubuntu-24.04` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:5e1928afa096ac126223648030b7263766e7b56b84032e72478183ba07bb60ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.4 MB (260398138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bba955a82fccb37caa947df013a6b701f0831ee067b1ca9a1efbf04ed0195497`
-	Default Command: `["jshell"]`

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
# Fri, 02 Oct 2026 05:37:06 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/usr/share/keyrings/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /usr/share/keyrings/sapmachine.gpg &&     {         echo 'Types: deb';         echo 'URIs: https://dist.sapmachine.io/debian';         echo 'Suites: stable';         echo 'Components: main';         echo 'Architectures: amd64 arm64 ppc64el';         echo 'Signed-By: /usr/share/keyrings/sapmachine.gpg';     } > /etc/apt/sources.list.d/sapmachine.sources &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-25-jdk=25.0.4.1 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 05:37:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-25
# Fri, 02 Oct 2026 05:37:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5391686224f2f498db7f36a7579acbb5ec09a1ec2de24461b5b6359d87abf51`  
		Last Modified: Fri, 02 Oct 2026 05:38:02 GMT  
		Size: 226.0 MB (226021629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-ubuntu-24.04` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1651b28cbcddf4431400f970eb5a08912e891e15af025a3a3609dc478b82bdc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2612365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a78bc3f9b8e65eab24e22c9dc1147fa96a6b8d36e9431632c9001aeb0d6db47`

```dockerfile
```

-	Layers:
	-	`sha256:267cb6b5f714dc6369801020196d210a55581b64c642738bad49f312ce7d3e11`  
		Last Modified: Fri, 02 Oct 2026 05:37:56 GMT  
		Size: 2.6 MB (2596593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f020c774d34b7223c2d158a3c0c37e89d8a0e2484d73f3bf1fa989492181627`  
		Last Modified: Fri, 02 Oct 2026 05:37:56 GMT  
		Size: 15.8 KB (15772 bytes)  
		MIME: application/vnd.in-toto+json
