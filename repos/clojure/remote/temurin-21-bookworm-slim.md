## `clojure:temurin-21-bookworm-slim`

```console
$ docker pull clojure@sha256:44a3ac3d2a454951f2ab5cd80cfc4e8b97546c6e3d13e412e874402b91ac84fe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:bbf20a2a1fb8ca411654860b4e7069cf72b6251c4b951de4b8118f5d8a1356d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252874227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0f6cb481d60f9b6c6b28e8c04cca7857dcbfd71a3bc1a771b616f8932c4992a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:50:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:50:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:50:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:50:18 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:50:18 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:50:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:50:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:50:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:50:31 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:50:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e06c2343b38a8553c9e16172c3147aa1677518dd7f1904d5844bc4b1cfced1b`  
		Last Modified: Tue, 27 Oct 2026 00:50:54 GMT  
		Size: 158.1 MB (158117499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b8c5884db0767615fb9f9760de4f12f924c930049dba7cff7373fe22d24721`  
		Last Modified: Tue, 27 Oct 2026 00:50:53 GMT  
		Size: 66.5 MB (66507748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41c7800447d6cdd6e65ec040efb2c019a9ec70248da8a69c2256d1cba0f3808`  
		Last Modified: Tue, 27 Oct 2026 00:50:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4797e4a951de787c0e3811526d3dedf80c12394c9df68344ab70023fc919b7d7`  
		Last Modified: Tue, 27 Oct 2026 00:50:50 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f0fba3d76803eedd7664536ca0c7d038844e4c142674f42b2808ad19ca910319
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7a27ec29888237dfbea8d4c7e63abcc32fdd03c8753b42016639d4d67d60df8`

```dockerfile
```

-	Layers:
	-	`sha256:429e22671e3fe5f4f092d86dd1e361230fdb2bc5fd092a613a2b83fe69a2cb6e`  
		Last Modified: Tue, 27 Oct 2026 00:50:50 GMT  
		Size: 5.1 MB (5119893 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8e91dd706ea963119fce93743fb1637db46451ee6029b32427190a431af4e7e`  
		Last Modified: Tue, 27 Oct 2026 00:50:50 GMT  
		Size: 16.0 KB (15989 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:962121663439b122d5e5e15da38ad4a37df081b9df555c49a6410c18209e553e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.0 MB (251041268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6ddac867b5e695f2016accad41527f78dd4281cb08da6faeaf356b3e020e7ca`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:50:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:50:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:50:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:50:04 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:50:04 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:50:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:50:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:50:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:50:19 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:50:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:289eb0fbfe580c61fe7624e01dd852badafe261b78b690ca640fc5b2a12ee1ae`  
		Last Modified: Tue, 27 Oct 2026 00:50:43 GMT  
		Size: 156.4 MB (156400707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e3ac83f76ee780ddc64542285762aadbcd2b7d36f92ede41224827f9c2b59c0`  
		Last Modified: Tue, 27 Oct 2026 00:50:41 GMT  
		Size: 66.5 MB (66501090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:977e1cb6b61806367f9eaa7f7d83e44522fe635b24389623aa41cc4d5c3a46ca`  
		Last Modified: Tue, 27 Oct 2026 00:50:38 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3890ccd69229762ed045d17fdb574bb7dc53354ca2d162c51b1158a8f8180837`  
		Last Modified: Tue, 27 Oct 2026 00:50:39 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bbbeff58bd4a242d812556fa72894b6c9d190877ff68a9cf5ffedcee09becc5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5141762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36dff4255936cc93e9987138b1eff308ae8f2527d9a37277060b3a13fac1c059`

```dockerfile
```

-	Layers:
	-	`sha256:6acc06d2a317f662b960d4f1ff3552d415ac92fb0725b471123caddd4953dc20`  
		Last Modified: Tue, 27 Oct 2026 00:50:39 GMT  
		Size: 5.1 MB (5125654 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3cabecb40bf090024bb26d9436327fc7891424cd40ee001ca95a7368fdeb3b2`  
		Last Modified: Tue, 27 Oct 2026 00:50:39 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:574fd64ec1a228f7537666e23311e77d883b7b47dbf9ea0f6e1da4c407205911
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.7 MB (262709798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a539cd26aeebb4be91f1259cf62faf1cd93c91eed4dbcf940f7d7ea12263ec7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 10:33:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:33:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:33:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:33:21 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:33:22 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:46:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:46:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:46:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:46:25 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:46:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:916f56caeeabd6654227a0fe59d93f1d7414db3ffd6d7284aa029ff5ef282137`  
		Last Modified: Wed, 21 Oct 2026 10:38:58 GMT  
		Size: 158.3 MB (158282653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b91aed6cef4eebc95339065473aefdcbcdb5cef532003ecb766e501514a8aa4`  
		Last Modified: Wed, 21 Oct 2026 10:47:06 GMT  
		Size: 72.3 MB (72332890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ac3bace6b5b62ec3ab9741f5436e2575ff541621a00f2f8f9978918f6f93a4`  
		Last Modified: Wed, 21 Oct 2026 10:47:04 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d0b1e34faf0864e65f50cc19a9997eff94d95166ba995fe225d7a5f44bf73da`  
		Last Modified: Wed, 21 Oct 2026 10:47:04 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:99a3b6abe1be10986e73ca03029fe27a1516e9cd79dfb3b156170ae532f80f81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5141061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52e5959fcffd47414560b2bd3fc8066f40709f38cbc43ce2ff8c5f386217a569`

```dockerfile
```

-	Layers:
	-	`sha256:931648ebe6314a5df53ff202088acb9b17b15962ac4decc8c9d82d6676a49723`  
		Last Modified: Wed, 21 Oct 2026 10:47:04 GMT  
		Size: 5.1 MB (5125023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1ff9493b3ab43431530fa2a3bedfec5f19697f6e7cbb4de696affbe9dd081e6`  
		Last Modified: Wed, 21 Oct 2026 10:47:04 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json
