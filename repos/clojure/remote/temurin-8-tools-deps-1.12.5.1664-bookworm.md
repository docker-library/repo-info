## `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm`

```console
$ docker pull clojure@sha256:64a633813380336c49df8c7c676cd547ecfafade667eaece59f20cd1e7cbea51
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:61fbef20f03806610bc43232a272e21c2bf3f6ff05cac59ea0e2c16b6d607312
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.8 MB (181825952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83588cad694c5dc72e88793b5c3c3ebf8ad58378e19dccac3cd2cb8aa4ee1a08`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:24:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:24:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:24:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:24:26 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:24:26 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:24:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:24:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:24:41 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6423e78edf7e79dfd4b4809c5440f324fdc41bb13c16c1b45841fd3a4bd6f233`  
		Last Modified: Tue, 25 Aug 2026 01:25:00 GMT  
		Size: 55.2 MB (55164396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f16c6628f1c0598a235249eab839be25a16ef7b0a71e8e443dc88d33c648b5ad`  
		Last Modified: Tue, 25 Aug 2026 01:25:00 GMT  
		Size: 78.2 MB (78163548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ca4cc146f6a53c3cac205c96600030c2f9735f9ca46a08cbed3bb278e0b7b7b`  
		Last Modified: Tue, 25 Aug 2026 01:24:57 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e8ace50dc9c5d03657ed0afe496463067d174af46cedf9c6954da0d89c84b978
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7516081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1be6de828b26ed92e95ce81a66241e2cfe08fd295d58fa06b14dd091d724e6d`

```dockerfile
```

-	Layers:
	-	`sha256:8a440513aa59781cb31cea6711a0c56d1439ac152812cb46a3d3d262f35c44b6`  
		Last Modified: Tue, 25 Aug 2026 01:24:58 GMT  
		Size: 7.5 MB (7501733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:459b29c818cf37d87fd0f954520a0529959eda3417da07a927d93844bf956dd2`  
		Last Modified: Tue, 25 Aug 2026 01:24:57 GMT  
		Size: 14.3 KB (14348 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm` - linux; arm64 variant v8

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

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

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

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm` - linux; ppc64le

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

### `clojure:temurin-8-tools-deps-1.12.5.1664-bookworm` - unknown; unknown

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
