## `chronograf:latest`

```console
$ docker pull chronograf@sha256:51041d399ccea7e2f49b3dd16f1f4ff4360e585aabaff8827c43d72ae5444dde
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:7cfb132b2f6c87d070ef152dc4e85413ea529609a645baed1a0090e893f46d48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96971329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:029d0a4d687d232480876f7eda59e2d589a157f33105d296f79f2561c7ec3d12`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:46:27 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
ENV CHRONOGRAF_VERSION=1.11.6
# Wed, 21 Oct 2026 00:46:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 21 Oct 2026 00:46:33 GMT
VOLUME [/var/lib/chronograf]
# Wed, 21 Oct 2026 00:46:33 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 00:46:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 00:46:33 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e241ba715e5e5da26dee7a8066c8c0177ad05173a7aa6c229519b18749da9da3`  
		Last Modified: Wed, 21 Oct 2026 00:46:48 GMT  
		Size: 7.7 MB (7703442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb792ad61fa612400753365c8424c5695757d4299135ed65f212b13a13fd6e9`  
		Last Modified: Wed, 21 Oct 2026 00:46:49 GMT  
		Size: 61.0 MB (60995481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a91dd9bad8dbd43742b135c2aee43e79c63079ab825f84ba7c099631fdd681c1`  
		Last Modified: Wed, 21 Oct 2026 00:46:47 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95defbdd4186ec95c131199128a84a386954aaa1edd335296720d27ccfb4e93a`  
		Last Modified: Wed, 21 Oct 2026 00:46:47 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d2ba43a5efcfc5628284749e98f8afe374dfe06d7f4c67d6eabd256e5df5fa`  
		Last Modified: Wed, 21 Oct 2026 00:46:48 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:9cfa7b1673e8631d33287b355c99d0bee9ef2b6f3661685b6423d286c3ee9ac7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5a8f298ab69369c7e1ae4a8b6cb09d9fc5f720bb1d5ba78303e8786006162e1`

```dockerfile
```

-	Layers:
	-	`sha256:ea131daffed3962fcdf1d4626360b3b669ff68acf944aa528e5d20ed14d9ae23`  
		Last Modified: Wed, 21 Oct 2026 00:46:47 GMT  
		Size: 2.9 MB (2877746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92e99cb5e64282d312c2c36c67645829e56375e82c58865e1556633b59a6c9ea`  
		Last Modified: Wed, 21 Oct 2026 00:46:47 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:31eeac8303bb31b4ab62a2f3ce40e7e92093b2c351a9fe585f0a2308204facde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93631050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:422d8fd24429435c5757102b6d388d12beb2759a2d673531b5ecf748b72e9efb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 00:49:53 GMT
RUN set -ex &&     mkdir ~/.gnupg;     echo "disable-ipv6" >> ~/.gnupg/dirmngr.conf;     apt-get update && apt-get install -y gnupg ca-certificates dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         24C975CBA61A024EE1B631787C3D57159FC2F927 ;     do         gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys "$key" ;     done # buildkit
# Wed, 21 Oct 2026 00:50:00 GMT
ENV CHRONOGRAF_VERSION=1.11.6
# Wed, 21 Oct 2026 00:50:00 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps # buildkit
# Wed, 21 Oct 2026 00:50:00 GMT
COPY LICENSE /usr/share/chronograf/LICENSE # buildkit
# Wed, 21 Oct 2026 00:50:00 GMT
COPY agpl-3.0.md /usr/share/chronograf/agpl-3.0.md # buildkit
# Wed, 21 Oct 2026 00:50:00 GMT
EXPOSE map[8888/tcp:{}]
# Wed, 21 Oct 2026 00:50:00 GMT
VOLUME [/var/lib/chronograf]
# Wed, 21 Oct 2026 00:50:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 00:50:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 00:50:00 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d243647a013ac66346a583019aa8871aa6ca59753c71eecc8e4ea77ffc12a1`  
		Last Modified: Wed, 21 Oct 2026 00:50:14 GMT  
		Size: 7.5 MB (7514405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba636d5cec6359c7ce2be4688d30ed62d1f204a8abe82c4574c341683e1e388`  
		Last Modified: Wed, 21 Oct 2026 00:50:16 GMT  
		Size: 58.0 MB (57953744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1d2bd0728a7548dc5bca3e533a314389b7f51d21feda7818dc468a3c8264ba`  
		Last Modified: Wed, 21 Oct 2026 00:50:13 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090e7002b46e323323b2b8648415927112fdf9532a7b6632da86dadb7d0862a8`  
		Last Modified: Wed, 21 Oct 2026 00:50:14 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c49a984350410e7363d523f560330f75008712adbb6cc98fd6876e01687a587d`  
		Last Modified: Wed, 21 Oct 2026 00:50:15 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `chronograf:latest` - unknown; unknown

```console
$ docker pull chronograf@sha256:a4316dadf244e087c5058d835e610e32bd3acab069e4d4927c983c018183c125
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2893149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab3bab40c2eba8ff281fb9bdddc56411dbd16ef7ab65843aea4d027e8010961c`

```dockerfile
```

-	Layers:
	-	`sha256:9e9864e2d0062463cb1c221b9f78c01899b34a3b51a3140c2b9ba3fb3ff72049`  
		Last Modified: Wed, 21 Oct 2026 00:50:14 GMT  
		Size: 2.9 MB (2876960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:783a83f3b9dd91b413f6669f118758da76669c4806143c1a255519aa50f3dafc`  
		Last Modified: Wed, 21 Oct 2026 00:50:14 GMT  
		Size: 16.2 KB (16189 bytes)  
		MIME: application/vnd.in-toto+json
