## `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:5e8b75e8f92956211aa76474da0794ba383c6ca540b57a18191bddbcafb32b80
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:06bf248e2d099f38d39d98f987ae5c253c28912f3d25cddf5321fded4863c059
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240794889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1709c1c478002395741486c928d219eb963c778a6849f2b25457ecba08789b4e`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:44:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:44:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:44:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:44:06 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:44:06 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:44:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:44:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:44:20 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4ad8c855e447e28c9e982311402719b0406b87d1ebe9dff09cb23354e1d984`  
		Last Modified: Fri, 02 Oct 2026 02:44:43 GMT  
		Size: 145.9 MB (145864240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:805038a8f9dbc7231f75edf80d387829178fa8f4c824edbadeb0a523175b0b27`  
		Last Modified: Fri, 02 Oct 2026 02:44:42 GMT  
		Size: 66.7 MB (66691559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628946a090a9e53769f9da8c77a2bcbf9940dba6fc7d52e723cb1c94142b81ad`  
		Last Modified: Fri, 02 Oct 2026 02:44:39 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9063312f98d34ec769ba712bec68868fb56978c95c5e45b13049ad5b22b9ef6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5153245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d077631c05b03209e99380205124a0a95047936d7300685a69abbdb6f89b1b75`

```dockerfile
```

-	Layers:
	-	`sha256:fb5cdec56ccf3f4c79b358c033a00d7f3519103c49e7ef9f117addc2808e8c16`  
		Last Modified: Fri, 02 Oct 2026 02:44:39 GMT  
		Size: 5.1 MB (5138824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15d7601d82e68f5112d5436e92f451eabceb8b648d5d6290d22f92319885adaf`  
		Last Modified: Fri, 02 Oct 2026 02:44:38 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8559b0a59e9043ac773c4e105a60823723044f5bf001c68d31600412130dc11f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.4 MB (237379800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da98434ad910cb938760df7f180518b7ea58ecc888c69b50d4ad8cba1be47c77`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:43:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:43:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:43:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:43:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:43:40 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:43:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:43:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:43:55 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:812fdb486ad37d93446abe77aa05e9d15018164df60024fc0fe0a86388a555d2`  
		Last Modified: Fri, 02 Oct 2026 02:44:17 GMT  
		Size: 142.6 MB (142576559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8222f129c7b6683598ea2d67a451f40a6c761065171b3617426cadc6963269cc`  
		Last Modified: Fri, 02 Oct 2026 02:44:15 GMT  
		Size: 66.7 MB (66678915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a0bdc28365cfd7e33f6ccbce771e7d2dba765e09c51ea0c354f5cc9b289dae`  
		Last Modified: Fri, 02 Oct 2026 02:44:13 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:032e007d0697b75cc498da1d2bf63957749464175cb3b2387c6fa8d07198fc84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5159742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:260e23e7f3d166f9788f662a85f8ae0e52e497afb78c556e388361da51fab8cd`

```dockerfile
```

-	Layers:
	-	`sha256:42e43c2b746eb8b371e3060721536e4ec720c8b119aa56471c4b525daf019103`  
		Last Modified: Fri, 02 Oct 2026 02:44:13 GMT  
		Size: 5.1 MB (5145203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e982925cd75e27f639eaaac7cc8924cd6a65eabb48a55e5c4bdfb3c175f2af45`  
		Last Modified: Fri, 02 Oct 2026 02:44:12 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:4069ff7b7a8cd9001603e0310c2df929a44fb97626a2b203146e7bc5e0b4e6b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237676785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:772b93703f2dcbe7702c75d96b6ec482536df3fee22500839709427cee297683`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 03:56:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 03:56:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 03:56:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 03:56:47 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 03:56:47 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 04:16:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 04:16:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 04:16:37 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a233216da5554cabeca3c0c923ccdf1889367355bcebb26bbb6ffe4a3579bff`  
		Last Modified: Sat, 26 Sep 2026 03:59:51 GMT  
		Size: 133.1 MB (133094725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:989b76f4b5bbe371c95d0f2f75439aef1b77b022f91b74bee76dffc2ec94961a`  
		Last Modified: Sat, 26 Sep 2026 04:17:12 GMT  
		Size: 72.5 MB (72497851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1912dbc30ed8c54d31f9427d7886c5cd068efe8edd73988635397292e61edbd`  
		Last Modified: Sat, 26 Sep 2026 04:17:09 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d0aa63ce870a6316f0ea25453d7d4bdd884769f7cb55ecbf38cc3d809a69c693
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5157836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c358ab5d536d062a73ffd3fa4ec513812611a0232c92ec0e7d1c77b039fe3400`

```dockerfile
```

-	Layers:
	-	`sha256:76d5225ab5c53065594a983720cf0ca2d8d56873f23ff19586aa3924b5978446`  
		Last Modified: Sat, 26 Sep 2026 04:17:10 GMT  
		Size: 5.1 MB (5143367 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75c9a6b69bb2ae0ca44e5ade69155d202595352473d1ae5f09f044f2f6f06322`  
		Last Modified: Sat, 26 Sep 2026 04:17:09 GMT  
		Size: 14.5 KB (14469 bytes)  
		MIME: application/vnd.in-toto+json
