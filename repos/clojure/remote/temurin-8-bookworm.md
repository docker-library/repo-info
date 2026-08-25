## `clojure:temurin-8-bookworm`

```console
$ docker pull clojure@sha256:abf7080bc9f3178942cdda079ef3fdb86d8414a48b97757f3eb5a086187c8a9c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:d7a0c122eb30ecaf4d679bc27342087b82e16d46fd98179d5f0ed6c7f356660c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.8 MB (181825650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b4582e22e407a2860c944f2dfb59028f2bd77ee845af0f12f57eb5ccdc9dcad`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:08:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:08:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:08:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:08:31 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:08:31 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:08:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:08:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:08:46 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66bd947c2025d62bfaeb3d89e82ad4e4bae5a4c7d51937c47a569ca4eed957b6`  
		Last Modified: Fri, 21 Aug 2026 19:09:06 GMT  
		Size: 55.2 MB (55164399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6df7c028da9973f6b724a777a656b97490453653e027f2b2d57e8dc6605c9ec`  
		Last Modified: Fri, 21 Aug 2026 19:09:07 GMT  
		Size: 78.2 MB (78163518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af1899fbc98cabdd2804ab9d36c8b35141baf00ef078474da75bcaf7c15e05e`  
		Last Modified: Fri, 21 Aug 2026 19:09:04 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:3ae3509f4990bb3a89d9ee7aaa2f6dede3e89a0a33b1ac7a131ee026e2cb3773
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7516081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e7467f610f30080ef91fd3189c6a22e06f16810a56e45f38c133d97222f15ca`

```dockerfile
```

-	Layers:
	-	`sha256:31c9556af0fe02ca7eaa0cb7e8cf80eb932253dbb1ec31559c4b22a1fad9504e`  
		Last Modified: Fri, 21 Aug 2026 19:09:04 GMT  
		Size: 7.5 MB (7501733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:173cf1704cb65b58439fb46b4496dfe6f6b0f203ef41dceeee0fccd9deb469bb`  
		Last Modified: Fri, 21 Aug 2026 19:09:04 GMT  
		Size: 14.3 KB (14348 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:fc8ea815c0a1f229a2cf22dcaf02b32aaa7c4366f2f061525b3925d381ebd7c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180793443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75ab9d1484fc9959315bd191d918424559c1891a55259d93e5fa0e359d5c62be`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:28:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:28:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:28:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:28:32 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:28:32 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:28:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:28:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:28:47 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c26a73d937f6cf61c9881333af089833af0b616dd063aadaad24f050e01c80a`  
		Last Modified: Tue, 25 Aug 2026 01:29:10 GMT  
		Size: 54.3 MB (54262768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de25b3c52c62069283d47c6c1c0bed608505a334569acf98e2cd0012bc36e71a`  
		Last Modified: Tue, 25 Aug 2026 01:29:11 GMT  
		Size: 78.1 MB (78146379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74df24cd08ba837e713a8cf39fd2829ca81290f9b1c47589721bc6836fc7865f`  
		Last Modified: Tue, 25 Aug 2026 01:29:08 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:2432bb722d9ba6da873cf47584ce9a8f0cba6389210aee6236748052e5e6ca91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7522662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89a788dd970c339ffdfc9703e17403180288005e9221cdf4b5284b0dfa2c7f22`

```dockerfile
```

-	Layers:
	-	`sha256:5b42f0fc36899e896dd7f3e9556496db4423d484c2a30e826140cd46eaaede97`  
		Last Modified: Tue, 25 Aug 2026 01:29:08 GMT  
		Size: 7.5 MB (7508196 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15190b818616fc7222ec888479d197cd884c70e98ec0d8615e99381bb6d9a344`  
		Last Modified: Tue, 25 Aug 2026 01:29:08 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:60e55e59df227d8de17023e06139d941fb5cd78c098d54e71337bb9ac63d4382
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (188991636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6287843d235bbe151d80d1bfaf56045e3dcf0e83993b16a1754bd52c2526ff`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 21:24:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 21:24:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 21:24:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 21:24:14 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 21:24:14 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 21:25:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 21:25:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 21:25:08 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:438a1f9bceb6c4831716588fb9a414e997092151572e7ac2c45d36440ff41267`  
		Last Modified: Fri, 21 Aug 2026 21:25:47 GMT  
		Size: 52.7 MB (52670662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:031792febc3a4e1a8a9ec2f54cfe277077ed2bc8571418ebb60db971b4681fdc`  
		Last Modified: Fri, 21 Aug 2026 21:25:52 GMT  
		Size: 84.0 MB (83978851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb4e3f5ee3adb9b6bedf67c94cd78cecf788befc9b17fb28bf8bf59bfbbcc0b`  
		Last Modified: Fri, 21 Aug 2026 21:25:45 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:503fdf6cfa499e12c79f6e8011d157afa8ba044d0861ae00d53b33a15cb5b932
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7521940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40c34ad1861573d9fde09ba41ce322b740e889d6055536e7966968cc9fe7f3f3`

```dockerfile
```

-	Layers:
	-	`sha256:51087667eddbf761a44df9c46aea0cb7cd6b73cd95dfbf25bab8dbb7a0978d9a`  
		Last Modified: Fri, 21 Aug 2026 21:25:49 GMT  
		Size: 7.5 MB (7507544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c12987ca4f5e381a44189dae1d55628403482cd3bde6d25a16bc6da8fe86b17`  
		Last Modified: Fri, 21 Aug 2026 21:25:48 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json
