## `clojure:temurin-11-bookworm-slim`

```console
$ docker pull clojure@sha256:afb8732d6e0164d0649b5d65a8455d85848833ca6c344392deab47b650e7eb43
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-bookworm-slim` - linux; amd64

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

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-11-bookworm-slim` - linux; arm64 variant v8

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

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-11-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:dedad9a2c51ef3a302fa1264121f75cdb566ec8ccaeaf7a3735f8fb271959e2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237677947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f313713fef437059260cf71f9a61effd75f65bb495727ea7abe9b73a2de48dc3`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 07:36:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 07:36:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 07:36:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 07:36:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 07:36:57 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 07:52:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 07:52:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 07:52:08 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:435b5fde11a9c421080a95f3631157bd4034967ee5a3c89f7c8b0f52836a0055`  
		Last Modified: Fri, 02 Oct 2026 07:40:55 GMT  
		Size: 133.1 MB (133094699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d01f8438fe05dd91332377cf287d95705d8eb2a786af605ea82903018aedfc1`  
		Last Modified: Fri, 02 Oct 2026 07:52:49 GMT  
		Size: 72.5 MB (72499038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:275c82a9c8b82deb7e5606c69546f5418289657a1494ab7904b1f5f4422467d7`  
		Last Modified: Fri, 02 Oct 2026 07:52:47 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6457ea4b6a96537f76a64ac8eb49b908fdef454afb5367c72af2094bdbd0f09d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5157836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2ebb4eda04ed5db2654688670a933dfa9f32ce68683f19730d140326d1606c`

```dockerfile
```

-	Layers:
	-	`sha256:bb05a18d3bca7efe5573500dc6f94da19dd9efcb8a4511884deea69cea9c9196`  
		Last Modified: Fri, 02 Oct 2026 07:52:47 GMT  
		Size: 5.1 MB (5143367 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54cd5f6011ed83441bf63173e572fe7667480a584b9def3da279f05a65b6e79c`  
		Last Modified: Fri, 02 Oct 2026 07:52:47 GMT  
		Size: 14.5 KB (14469 bytes)  
		MIME: application/vnd.in-toto+json
