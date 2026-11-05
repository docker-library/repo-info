## `clojure:temurin-25-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:2e71176a5b45260ad16788e6b0b13f1482a1a1acde7ceb8e0b3f8ae13c6df3a7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:ebc7c5df70e6b2dfad6a90cbfe3fead8578da4427978159acd7de30c7ee7c3e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143435295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dfe112331d30e111e3b7db8bac227594f90c4574a8f31928dd8a9b9d74611c5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:10:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:10:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:10:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:10:09 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:10:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:10:09 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:11:14 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:11:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:11:14 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:11:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:11:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:11:15 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:11:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d8b38d98841b1dbebac0761ca7e922efe5b1f2549a9750bf11ae5d3e03e9505`  
		Last Modified: Thu, 05 Nov 2026 08:11:33 GMT  
		Size: 92.6 MB (92598868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f315fccc475db36c048fefb7db4a26702921eb9a46a59975dacc9ba12310828f`  
		Last Modified: Thu, 05 Nov 2026 08:11:31 GMT  
		Size: 18.1 MB (18072825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75f77a67bc5b34534d1a8710447d7f9e6e90d0aa90b7a86f2a6801c3f0021d5a`  
		Last Modified: Thu, 05 Nov 2026 08:11:31 GMT  
		Size: 4.5 MB (4515189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b5369bd5e193681a9d1f2900de6d64b1a2bec9b25c3f0ab2cfdf5736361d2a2`  
		Last Modified: Thu, 05 Nov 2026 08:11:30 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3c87c9a56ca72920672a831b07fd375146470e566261f4b0c68ea3476b0d1d29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2722801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b70d802698c9b3bf01cadd2c12d1cd22c140a4dd49585a4488adfab1d21718`

```dockerfile
```

-	Layers:
	-	`sha256:936b351fdd7505f1d781d4c1fadb5a3afac9edce46e0b68d324dcc2782b1a8d8`  
		Last Modified: Thu, 05 Nov 2026 08:11:30 GMT  
		Size: 2.7 MB (2704373 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff6b1514d0d54900971b477c19336884176550819d754d6b5916ceec6efc0630`  
		Last Modified: Thu, 05 Nov 2026 08:11:30 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f723d256ba18b6211090674435fbbb84273be976b087b7f20f0843e79c6a6f90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142092427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a29c72ea14417546ad17810be87753857bec67a49d34ce20ad1b540dd9adc5d5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:19:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:19:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:19:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:19:24 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:19:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:19:24 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:20:37 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:20:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:20:37 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:20:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:20:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:20:39 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:20:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c816f33309f0597542f7746196258764b6845767fadb77f25329d04122029c78`  
		Last Modified: Thu, 05 Nov 2026 08:20:57 GMT  
		Size: 91.5 MB (91525601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a85642e056d11f2bb55959445e3fd102157a66af558967165c8b3c82626f572a`  
		Last Modified: Thu, 05 Nov 2026 08:20:56 GMT  
		Size: 17.9 MB (17906823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a5820661a37b39105658e3f2b2b5c859ccdb93f3b5f817f0fd2f636c4a0837a`  
		Last Modified: Thu, 05 Nov 2026 08:20:55 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a094371665a44ec313f128e725913623cdab0eeee728cd71b0ae9fb3a8fecdaf`  
		Last Modified: Thu, 05 Nov 2026 08:20:55 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c023f347bf98a35817e0522bdbcd6c2ecc708d00487d9d5a5d0863f8eb28b487
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2722582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e161586473ac0c325fb5f97a0ee685e1204244daadda2f98584e5a473a4f41d7`

```dockerfile
```

-	Layers:
	-	`sha256:7d4f620867f2c84e99e6a9b21e423473c0b9f38d6f70c1cde40c61d63bd99abb`  
		Last Modified: Thu, 05 Nov 2026 08:20:55 GMT  
		Size: 2.7 MB (2704009 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa1740c0a670fe8e9a248575139a1f9f223ce3f51bc2c57007a9c2d4c421611d`  
		Last Modified: Thu, 05 Nov 2026 08:20:55 GMT  
		Size: 18.6 KB (18573 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:d51d936890a26c6ad0094d73b191990ed03b1c8f1a2e79934d8d4f6b281aff1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (145000145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26dd9a2968935780a6b70ea5594ed61ed7bcf09d292e5da078c85b41e50bac0e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 16:02:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 16:02:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 16:02:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 16:02:19 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 16:02:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 16:02:20 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:06:40 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 16:06:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 16:06:40 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 16:06:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 16:06:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 16:06:45 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 16:06:45 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49c6a745c05ed8183f7d78d41d53dcc6725d2853049a6761ad29bfd0076632b4`  
		Last Modified: Thu, 05 Nov 2026 16:07:19 GMT  
		Size: 90.1 MB (90111726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7423e28b2edfde04eb57e0498e4c68058d1a69def6eb501163f19ca01605771b`  
		Last Modified: Thu, 05 Nov 2026 16:07:18 GMT  
		Size: 18.3 MB (18279202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d88c9de5d98c06a11ca4c4cbfdee77cc77a970389e2f682f3f24a718d3583e5`  
		Last Modified: Thu, 05 Nov 2026 16:07:17 GMT  
		Size: 4.5 MB (4515226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:907f49fe4ee4c4b5982767926303301e33ba5697067f03cae9a74a6dd3c8212e`  
		Last Modified: Thu, 05 Nov 2026 16:07:17 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c84463b4db3b0e95cc21c9f33e2b610562eb3553c595e37f60a45746c76b403a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2706153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3391cfc5d1a41ade1df6eae9effd8a8d7eedc105ed1ea32227370d0f07bc92d5`

```dockerfile
```

-	Layers:
	-	`sha256:5fa2c04fe9ad711eb5dea7b28a4f952df457f184baa50205f858a275e3af489c`  
		Last Modified: Thu, 05 Nov 2026 16:07:17 GMT  
		Size: 2.7 MB (2687669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:051561449786dff6006e1f7e5a6e48a39f0c67f86ae5788092286a75ea052b8e`  
		Last Modified: Thu, 05 Nov 2026 16:07:17 GMT  
		Size: 18.5 KB (18484 bytes)  
		MIME: application/vnd.in-toto+json
