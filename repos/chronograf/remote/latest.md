## `chronograf:latest`

```console
$ docker pull chronograf@sha256:973b10204ba70249c4f778611d398d47f861984be037ee52c8320a953c7a4956
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:ae7140d4e18b8f10d6316c33c528fb7cb6ac1e4be4b90ef1d9bec16903762969
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96991070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dde4fe78ff58e235861f708b43f8a7ce71042cbc4c90a47553eba66e58529bd1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:38:22 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Thu, 05 Nov 2026 07:38:28 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 05 Nov 2026 07:38:28 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Nov 2026 07:38:28 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 07:38:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 07:38:28 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9b8dc02bdf8fcf4df48d6811119e805f58d3a335dcd0472d80fc7b5b950dbdf`  
		Last Modified: Thu, 05 Nov 2026 07:38:41 GMT  
		Size: 7.7 MB (7704270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f037355c33208b4748f99b0c5ca358722293ccda960ea042d42781dfb463f525`  
		Last Modified: Thu, 05 Nov 2026 07:38:43 GMT  
		Size: 61.0 MB (61014351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:284071b39bd099250a0ec3ccc71beca1ffac5e3130c5ef37356b6ff5cb5212f2`  
		Last Modified: Thu, 05 Nov 2026 07:38:41 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fac9aa9b54f026435ee802b1d8fe136f1a41319b0fe06022b0ea920d96012fbb`  
		Last Modified: Thu, 05 Nov 2026 07:38:41 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fc69b4109c7cd1e3a430176b76eac8dcd807726b551087e153ef48a1c161599`  
		Last Modified: Thu, 05 Nov 2026 07:38:42 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:f42cfa5eafecade0ba9ede3c2b9dcf0a619b5dd7693ed8751da84f09a196976f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83f66418b7f568c0af6e80466c81adbb129de4be69905f86633c49e7400bbea2`

```dockerfile
```

-	Layers:
	-	`sha256:75d7d0d60fa680aaad2a99a901703135a5348ddb0fb4a70410fc37f98e8812bf`  
		Last Modified: Thu, 05 Nov 2026 07:38:41 GMT  
		Size: 2.9 MB (2877830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db8b956fa10270d190db7790d010d58657e549c973affc117cdd726dc7a29658`  
		Last Modified: Thu, 05 Nov 2026 07:38:41 GMT  
		Size: 16.1 KB (16085 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:36f9a907db13d2d7d3a7c226492827b8b251506b553648286b640698d1855848
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93644768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37de168d3d76b3948854f6579beaecc6c59d05d211ec96d321e866751088b06d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:42:11 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Thu, 05 Nov 2026 07:42:17 GMT
ENV CHRONOGRAF_VERSION=1.11.7
# Thu, 05 Nov 2026 07:42:17 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Thu, 05 Nov 2026 07:42:17 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Thu, 05 Nov 2026 07:42:17 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Thu, 05 Nov 2026 07:42:17 GMT
EXPOSE map[8888/tcp:{}]
# Thu, 05 Nov 2026 07:42:17 GMT
VOLUME [/var/lib/chronograf]
# Thu, 05 Nov 2026 07:42:17 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 07:42:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 07:42:17 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efa3dff3e4dd2eb87795bc7d1650dc371bc26d339d431a5fa5a7f1814250cf61`  
		Last Modified: Thu, 05 Nov 2026 07:42:31 GMT  
		Size: 7.5 MB (7515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4261004e4abfd13a9a05eb4d247bb4a0cf360aa9080f2386044112c42b8b16f`  
		Last Modified: Thu, 05 Nov 2026 07:42:33 GMT  
		Size: 58.0 MB (57960731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c14d80e92825c69ec6c9de24d42dec22d8ad2ef80d58d379ddcd3934877ff8eb`  
		Last Modified: Thu, 05 Nov 2026 07:42:31 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9f613d51f7db4db9c35603d2daa0fb668a1892e1434775d5b4f9341e7abe07e`  
		Last Modified: Thu, 05 Nov 2026 07:42:31 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:087ddc2c1268b729635e4326c2ebcc252bf92c0ed1761744a46f01cf0b9444ee`  
		Last Modified: Thu, 05 Nov 2026 07:42:32 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:ed53013356553dd653b70c1e281bb4fe9875f58afeaa0fb6b8c0967e242b0867
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d3bda35b93d787713b40c49f81c21772de2030ab6f0bc2f8734fd793b15cc03`

```dockerfile
```

-	Layers:
	-	`sha256:5d788f675e0c98b4e1ffcef0ac420ad7630f7e20daa0a1912de21c892efaa19b`  
		Last Modified: Thu, 05 Nov 2026 07:42:31 GMT  
		Size: 2.9 MB (2877044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ba89e76cc9851c9da5150f5f6c5cb9b352d6cc00612c42625820bfe7a47fcc5`  
		Last Modified: Thu, 05 Nov 2026 07:42:31 GMT  
		Size: 16.2 KB (16192 bytes)  
		MIME: application/vnd.in-toto+json
