## `chronograf:latest`

```console
$ docker pull chronograf@sha256:c6312948e367e0c189cfbd0ac161fb9286755cb644fc796b74e16120efe91e44
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:74b2bddf7cea9c6fb1d24800b0f631944e993b8f53f479dd3846d3abdfead5b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (97024549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a69caff4ad0ac51281560d2c0b1e6042b5b96cbd75e07cc68360a4e2bd2cc3ca`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1795392000'
# Thu, 26 Nov 2026 01:18:44 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 26 Nov 2026 01:18:51 GMT
ENV CHRONOGRAF_VERSION=1.11.8
# Thu, 26 Nov 2026 01:18:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 26 Nov 2026 01:18:51 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 26 Nov 2026 01:18:51 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 26 Nov 2026 01:18:51 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 26 Nov 2026 01:18:51 GMT
VOLUME [/var/lib/chronograf]
# Thu, 26 Nov 2026 01:18:51 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 26 Nov 2026 01:18:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Nov 2026 01:18:51 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:b1dd3d113aab1041fd80cc61d9db7ffbc058f756bf46fc149a0d9aa8b85935f4`  
		Last Modified: Tue, 24 Nov 2026 03:39:57 GMT  
		Size: 28.2 MB (28247960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72da6bff2bf3dae3e70e86eefd8750bffe190112791bf7d4564553ff2adf1df9`  
		Last Modified: Thu, 26 Nov 2026 01:19:06 GMT  
		Size: 7.7 MB (7704268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b22d21034498aa265c68f7c23c7c8cc61956971061e98434e9c4803074f5142`  
		Last Modified: Thu, 26 Nov 2026 01:19:07 GMT  
		Size: 61.0 MB (61047849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a749d207fc253da1276440d17a9972d0c1f96064ca843a5f938095a7098691ec`  
		Last Modified: Thu, 26 Nov 2026 01:19:05 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbea1920184f65f40a01e89874bcd763f2c1451af5ba18fc98bbc93bb7e9a71`  
		Last Modified: Thu, 26 Nov 2026 01:19:05 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7ced5677ad3a05da5bad0f6897619d92d09691faae6edf19fa59868433831c`  
		Last Modified: Thu, 26 Nov 2026 01:19:06 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:b18f4e2f7ab3c40ce01b8d0313315fbe289e37a53556a6357d4245d21494d415
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2894972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9a2791bcb00ad2a25a205e2c070ba033644888bf88f49be6f892b9b08150733`

```dockerfile
```

-	Layers:
	-	`sha256:cf542f46c8b801969726a2cf4aed8de1bba922d3ac26d21e3546ed3eb3aac6d4`  
		Last Modified: Thu, 26 Nov 2026 01:19:06 GMT  
		Size: 2.9 MB (2878887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3a12839cff2cc547635c4445cb46819395ccb3ac90716c164a66e5bde076dbd`  
		Last Modified: Thu, 26 Nov 2026 01:19:05 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:fcb0fa157ccaffbc121952695904336d92e9d5018fd0227fb47d0561276ee548
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.7 MB (93673147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e294da3a7efb5fef40198556d53d3df1ca3d94ae6dfd24d8bb8d7bc1e1f0728f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1795392000'
# Thu, 26 Nov 2026 01:18:16 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 26 Nov 2026 01:18:23 GMT
ENV CHRONOGRAF_VERSION=1.11.8
# Thu, 26 Nov 2026 01:18:23 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 26 Nov 2026 01:18:23 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 26 Nov 2026 01:18:23 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 26 Nov 2026 01:18:23 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 26 Nov 2026 01:18:23 GMT
VOLUME [/var/lib/chronograf]
# Thu, 26 Nov 2026 01:18:23 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 26 Nov 2026 01:18:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Nov 2026 01:18:23 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:7f1aa0b5c351d0542b2066749ed47608e5873bcdd1fd14f4df6f0a05cac02f8e`  
		Last Modified: Tue, 24 Nov 2026 03:40:09 GMT  
		Size: 28.1 MB (28144305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ccf50dcd96652e6c1c3dce247c9cdf39f845ba2592060faed5d8dcac850d633`  
		Last Modified: Thu, 26 Nov 2026 01:18:37 GMT  
		Size: 7.5 MB (7515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fadd0011deaac9883f90ad2d1910ac322889e070f71ff573858edda92e97dce`  
		Last Modified: Thu, 26 Nov 2026 01:18:39 GMT  
		Size: 58.0 MB (57989200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f87a05e367e464ae2a63ab8f6b354053bb2682c6673552a27df94f4515f752f6`  
		Last Modified: Thu, 26 Nov 2026 01:18:37 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d64e7db823b4537fdd999080991eb85eed31f92bce20f735b6bf89bcf4131dca`  
		Last Modified: Thu, 26 Nov 2026 01:18:37 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153bce12ddb1d5ce918a3da0488302cffd01e57b956caf45277d963e38994065`  
		Last Modified: Thu, 26 Nov 2026 01:18:38 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:e850d0dc1e302f24178901d3e9f6e31c0857bf2d5abb53a33377894b6a8dda01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2894293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df6750a2763f87c2f338bc51ef92b6d78466b2ea635a4520d276caf8b4cec61b`

```dockerfile
```

-	Layers:
	-	`sha256:16c3f22c80fcc08cf83d5fa7c0bfdcc07bd9fa9ff6108a5f350d57209c304dc7`  
		Last Modified: Thu, 26 Nov 2026 01:18:37 GMT  
		Size: 2.9 MB (2878101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91ee24c758c8dc48339abe382e5226c010a616c9c5de1c0605e934fdf62a77ac`  
		Last Modified: Thu, 26 Nov 2026 01:18:37 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json
