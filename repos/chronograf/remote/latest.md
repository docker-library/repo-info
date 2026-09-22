## `chronograf:latest`

```console
$ docker pull chronograf@sha256:d9329ae9770c57cf501cbc51f86bb38eb7f219de4c41a17c2c0cf6297ecab543
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:23c94ef75d5193875b51951edc20e3083356cec28a91c9052ce0b967e2b59ab5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.1 MB (97132688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f431fa7cbbb79dd1e97f564809e702da93c5a105c10333ccb0a781453fce6dba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Tue, 22 Sep 2026 18:47:58 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 22 Sep 2026 18:48:03 GMT
ENV CHRONOGRAF_VERSION=1.11.5
# Tue, 22 Sep 2026 18:48:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 22 Sep 2026 18:48:03 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 22 Sep 2026 18:48:03 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 22 Sep 2026 18:48:03 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 22 Sep 2026 18:48:03 GMT
VOLUME [/var/lib/chronograf]
# Tue, 22 Sep 2026 18:48:03 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:48:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Sep 2026 18:48:03 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51b47ae94c047d9e105a39ddfba2d7fc27e581c68c09e3de6468e906e8961141`  
		Last Modified: Tue, 22 Sep 2026 18:48:17 GMT  
		Size: 7.9 MB (7900816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fd2aadbe3cbaba1d6f57e9658dc8cc123c3d652500f9f7773fd13a972fcd24`  
		Last Modified: Tue, 22 Sep 2026 18:48:19 GMT  
		Size: 61.0 MB (60968964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384828d0602df9a8538e122a3eb673e02fedebdb17db403bfe24fb539472269a`  
		Last Modified: Tue, 22 Sep 2026 18:48:17 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e92432dcf4276164e47b85e0246e569e41c3c3fb7c7b0f12e58b8647448b84a8`  
		Last Modified: Tue, 22 Sep 2026 18:48:17 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8254a41b36c33170d8ef43667c5d8cf211248f3c1bbb140260644bc0b8aff3f8`  
		Last Modified: Tue, 22 Sep 2026 18:48:18 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:beed566211776d8e46848de80227979a5f363921e0c2d2396c47978d8d236520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2895126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7becdc490fd7164f522961b5c7571523b5d5ceca57db7d9a6063ecf98355b9f6`

```dockerfile
```

-	Layers:
	-	`sha256:bfa2b17e646dcc89f295280ee488eb8b7b25a461072f0106898d26bdb718d098`  
		Last Modified: Tue, 22 Sep 2026 18:48:17 GMT  
		Size: 2.9 MB (2879041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9869b1ee17a87e8fb957efb047b77473873dd1181d267fad375edb376de1d9b7`  
		Last Modified: Tue, 22 Sep 2026 18:48:17 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:642469df9dc02ec2268601aee045dea3c238dfc33102e83d9fe23efc72818c82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.8 MB (93767422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d853d7649ca5b4da4c2ad66df019bce64e5a60c62834e1b99d2a535143ee11fc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Tue, 22 Sep 2026 18:45:31 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Tue, 22 Sep 2026 18:45:37 GMT
ENV CHRONOGRAF_VERSION=1.11.5
# Tue, 22 Sep 2026 18:45:37 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Tue, 22 Sep 2026 18:45:37 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Tue, 22 Sep 2026 18:45:37 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Tue, 22 Sep 2026 18:45:37 GMT
EXPOSE map[8888/tcp:{}]
# Tue, 22 Sep 2026 18:45:37 GMT
VOLUME [/var/lib/chronograf]
# Tue, 22 Sep 2026 18:45:37 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 22 Sep 2026 18:45:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 22 Sep 2026 18:45:37 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86788e79e5183b841fc329c2207f3150370f2c9458ab557daee75eb6b70d66ce`  
		Last Modified: Tue, 22 Sep 2026 18:45:52 GMT  
		Size: 7.7 MB (7709685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c0aa77a9ef7efddb032a0a5bf8998e0cce0e7aa963e5ed232cb4fb9d96d2ac`  
		Last Modified: Tue, 22 Sep 2026 18:45:53 GMT  
		Size: 57.9 MB (57909588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e1ff14a3743fdffc91505275d7adf6cd9e88fefc4aadd3478332418834a672f`  
		Last Modified: Tue, 22 Sep 2026 18:45:52 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2da31bbd7babbe74954bcfd27d55dc4513ede99b76c3dd8047c4af2fb129687`  
		Last Modified: Tue, 22 Sep 2026 18:45:52 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba4d53382e73a2382498743fd081f952ab699050ea5867bb81267f5254f346f`  
		Last Modified: Tue, 22 Sep 2026 18:45:53 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:ffffd528821bd1f55bd75d11e56cf31f789011cde6cdbbe6d78728b05c816598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2894446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df20b51b1326e9270fbf7027f5582f0baff0618449a404ba7c530ccc58d2edb1`

```dockerfile
```

-	Layers:
	-	`sha256:bd4164084af627effa31f78e0086ac499087ccf4317a3a8bad08a6ec96f50175`  
		Last Modified: Tue, 22 Sep 2026 18:45:52 GMT  
		Size: 2.9 MB (2878255 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2e6b66ed7b4098ddc690bba1d2027084b908dbd3a86a4a299e441be4a2123b3`  
		Last Modified: Tue, 22 Sep 2026 18:45:52 GMT  
		Size: 16.2 KB (16191 bytes)  
		MIME: application/vnd.in-toto+json
