## `clojure:lein-2.13.0-bullseye`

```console
$ docker pull clojure@sha256:b20d237f9f029b678d4720794d5ae9c8d0131bad8dfa01f1f87accfa40c9c390
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:lein-2.13.0-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:d36955c77f6543776cfaf224bfb4197c5ab91add9d5b8b4a44e66bb28e985c57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167807121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acd9946a5090661eb3c2ed59fdba166804d87d4664f5ed0b03e475fee4b73270`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:23:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:23:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:23:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:23:58 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:23:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:23:58 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:25:04 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:25:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:25:04 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:25:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:25:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:25:05 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:25:05 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5579e09b6d6c80d3046f35177b7ad71345fbd7c925ad8315fef4b7e2d9746073`  
		Last Modified: Wed, 05 Aug 2026 01:25:24 GMT  
		Size: 92.6 MB (92574564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01fdeca28e5913647811fa365f6e488ddbd88859dd76778ccdd759b275324f3f`  
		Last Modified: Wed, 05 Aug 2026 01:25:22 GMT  
		Size: 16.9 MB (16939928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:497382fafb0d9c1a32032a1eb49ef8d3fbd908926a38c62487f42f7eda17ccd0`  
		Last Modified: Wed, 05 Aug 2026 01:25:22 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:560da431abb3d362035552d5cb4cb83b9866d0cba063bea1f66a26d47f61890e`  
		Last Modified: Wed, 05 Aug 2026 01:25:21 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:5910404a9c720f8aea81a0d1dc3ffb10d205c208e5d7bedd2042c99c3da37e0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4487435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc9f4b464a4cfa04a6e66c0356a4bf163465b0a9a839a2a8de2dc165a4c9d27a`

```dockerfile
```

-	Layers:
	-	`sha256:914fe74c7e8c2a6cfb261267b89386821c43619b9be5fca60b0b3bdbf7415a4b`  
		Last Modified: Wed, 05 Aug 2026 01:25:22 GMT  
		Size: 4.5 MB (4469063 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ff3e6fd13424ba2025d3e6c252f469a5935a2c6904a9cf4fad20316c5e6941d`  
		Last Modified: Wed, 05 Aug 2026 01:25:21 GMT  
		Size: 18.4 KB (18372 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:74265e26067529a67da1fe3ed31bc1902d3c51d57d4e5574f67ea95883016ad3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.2 MB (165236856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e19e567fdedd84b67b0895ab05e7922e2f8720a398354c379311dde021bf226`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:29:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:29:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:29:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:29:57 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:29:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:29:57 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:31:05 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:31:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:31:05 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:31:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:31:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:31:07 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:31:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4bbb6032c836b9260b7a5caf2b9c7c081058a41131d7f59556f7e2506236fec`  
		Last Modified: Wed, 05 Aug 2026 01:31:27 GMT  
		Size: 91.5 MB (91542246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72094ebf9f3ceb5f3006fe8262f62c0f51ebf7cfbc83a9dd2f561a6fe6e8151e`  
		Last Modified: Wed, 05 Aug 2026 01:31:25 GMT  
		Size: 16.9 MB (16918097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65bae294a653964eafb43d44294de9428eaaf920a4ca98fb7a627cd08a8c42f0`  
		Last Modified: Wed, 05 Aug 2026 01:31:25 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b6a1df372ce547f29b57ca785e6a1405da1674fad34242c36ecef01ecdfb8d`  
		Last Modified: Wed, 05 Aug 2026 01:31:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:4cb62683d1cca98eddebdbbf72e33d8475a57940c7c3baa973d66fa67a445ad1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4486573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4aa5ca6d3eccb723a03737770097ea3d9a286dd0e040ebc1bbdb782de2cdf84`

```dockerfile
```

-	Layers:
	-	`sha256:98a7bb0eba6ca962dcf2adf548ff9f74b72c2bf53ca8d015cf8cfe7cd0c55f8c`  
		Last Modified: Wed, 05 Aug 2026 01:31:25 GMT  
		Size: 4.5 MB (4468058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be45b7dfa36db6171c6a622df4521f45f80a7529b29d535df4a15529d9442b87`  
		Last Modified: Wed, 05 Aug 2026 01:31:24 GMT  
		Size: 18.5 KB (18515 bytes)  
		MIME: application/vnd.in-toto+json
