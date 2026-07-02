## `sapmachine:17-jdk-headless-ubuntu-jammy`

```console
$ docker pull sapmachine@sha256:999aa97b1eaf40661c02704bc3a23095e9c8f35acc6131d3e85c9eb1db3f4b7d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `sapmachine:17-jdk-headless-ubuntu-jammy` - linux; amd64

```console
$ docker pull sapmachine@sha256:8775bf65aaa71e96f5a8904cb0a70e6639966d04b0717f4a7c9d9ebf1f150c7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.2 MB (230151613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c5d560387ee9535c9c326ac294fa6f4db264df6546b598464f6281b656710bd`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:38:56 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.19 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:38:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 02 Jul 2026 02:38:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d5c504e1f5717e4495ef5661ab8574101b80d9dbe189adea17cc6362b127b2`  
		Last Modified: Thu, 02 Jul 2026 02:39:17 GMT  
		Size: 200.4 MB (200412732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:0186e8657a0510da37d5434ac246be15a2937bdf9a52abd477fc0c961309383f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b079e1c2656aecd3b647a3747100d84dcfcf2b6334dc2a286ad8eaf93fa8168`

```dockerfile
```

-	Layers:
	-	`sha256:fe60233acd5469a4e3d7ba91c55c07182b2ad678d5b071ee86c198f8f3182ce6`  
		Last Modified: Thu, 02 Jul 2026 02:39:13 GMT  
		Size: 2.4 MB (2379064 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c8e60ad6a100e5f6e58114c65fe33b77109e47c92790175f42001196720a94d`  
		Last Modified: Thu, 02 Jul 2026 02:39:13 GMT  
		Size: 8.9 KB (8890 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jdk-headless-ubuntu-jammy` - linux; arm64 variant v8

```console
$ docker pull sapmachine@sha256:977c04dae51a76b2317f7ac45793f76a60fb2abfba5e38a5f8d57bb518f2a740
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.7 MB (226735556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9409584e6e3b4c1c3594dc116b4c006a6018729ea388d6d141f9e7010297fc3`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:37:58 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.19 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:37:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 02 Jul 2026 02:37:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e94bf6e74143715973b262ce8575b59f2928640f53237a8f6ccc59eb2b1d5b37`  
		Last Modified: Thu, 02 Jul 2026 02:38:21 GMT  
		Size: 199.1 MB (199122372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:ecacffbc5e41fc339bd17858541888b0b0bd9e53dd24603cff2b0b275e6ae141
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3317d1e79e23fcbf82b215a22ee29919205d698116bd235d48d388fbac031f6a`

```dockerfile
```

-	Layers:
	-	`sha256:813f5c554b11e1584dd2e6bd40e0002e1b9308272c1ee49af7ee61809ef3b042`  
		Last Modified: Thu, 02 Jul 2026 02:38:16 GMT  
		Size: 2.4 MB (2378736 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25af73b600fc00150f682ade16a60b797ea9d8343a81cf0f69cc8b92d309e21a`  
		Last Modified: Thu, 02 Jul 2026 02:38:15 GMT  
		Size: 9.0 KB (8993 bytes)  
		MIME: application/vnd.in-toto+json

### `sapmachine:17-jdk-headless-ubuntu-jammy` - linux; ppc64le

```console
$ docker pull sapmachine@sha256:7581d34043c3408cbc70b691510947f49eecb4cbfeb490d440d1f22090f20db1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.7 MB (235700340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2fde962749ad8c68fdc61e08b50a9d8a0ae0a5a90837cad8ed10a653e3eb52e`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 29 Jun 2026 10:35:02 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:35:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:35:02 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:35:06 GMT
ADD file:fe88ac7d2b59101d91924b906576ed0bd1506245791beb01e66dafe898d768bb in / 
# Mon, 29 Jun 2026 10:35:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 03:45:32 GMT
RUN apt-get update &&     apt-get -y --no-install-recommends install ca-certificates gnupg &&     export GNUPGHOME="$(mktemp -d)" &&     gpg --no-default-keyring --keyring gnupg-ring:/etc/apt/trusted.gpg.d/sapmachine.gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys CACB9FE09150307D1D22D82962754C3B3ABCFE23 &&     chmod 644 /etc/apt/trusted.gpg.d/sapmachine.gpg &&     echo "deb http://dist.sapmachine.io/debian/$(dpkg --print-architecture)/ ./" > /etc/apt/sources.list.d/sapmachine.list &&     apt-get update &&     apt-get -y --no-install-recommends install sapmachine-17-jdk-headless=17.0.19 &&     apt-get remove -y --purge --autoremove ca-certificates gnupg &&     rm -rf "$GNUPGHOME" /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 03:45:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/sapmachine-17
# Thu, 02 Jul 2026 03:45:32 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdb9c6492f9e6a63ba91504c0609970e8ff3aa7127596e005705c4314044b866`  
		Last Modified: Thu, 02 Jul 2026 03:46:18 GMT  
		Size: 201.1 MB (201058472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jdk-headless-ubuntu-jammy` - unknown; unknown

```console
$ docker pull sapmachine@sha256:7495d61ea87afef6df7f6cb5f82e0fe1d2674756b90ba518e86502d28119a911
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2385494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:638abf434e8e8c78bea686cf1d5683cd26c4daa85e58372b56737f53c38a5462`

```dockerfile
```

-	Layers:
	-	`sha256:9353e8b83fc9c1df276a3d3b6ecfc1d39620ba0ba40848f830034953f94e5d57`  
		Last Modified: Thu, 02 Jul 2026 03:46:13 GMT  
		Size: 2.4 MB (2376560 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:330141ba3f46c7ffbc71e4a10107c981210e456c65541919ed94dabf13cbe47b`  
		Last Modified: Thu, 02 Jul 2026 03:46:12 GMT  
		Size: 8.9 KB (8934 bytes)  
		MIME: application/vnd.in-toto+json
