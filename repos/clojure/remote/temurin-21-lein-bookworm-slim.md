## `clojure:temurin-21-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:5615db07f1d57dce1978f7d489497429c7b2347ff0ab5d3b2003539fdc247faf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:1bf0754dfa266cb35e13bee2385f0f5cf8f6ad19940619b478c287318f9c5f2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.2 MB (209245673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:860fbb8dae0b19f922cc6c220bdc88404ef6ca8033130f1d96427a6ae65657aa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:09:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:09:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:09:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:09:20 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:09:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:09:20 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:10:26 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:10:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:10:26 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:10:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:10:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:10:27 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:10:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b36bf77879d23903bd2943f675c96c781ca8f113c675a40559ca57184c63b32f`  
		Last Modified: Thu, 05 Nov 2026 08:10:47 GMT  
		Size: 158.4 MB (158409443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d62354158eb8219c0856cebcc13e8d0e1fa52eed3c12b0ce96990097d833a797`  
		Last Modified: Thu, 05 Nov 2026 08:10:44 GMT  
		Size: 18.1 MB (18072617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63244a6587f29beeac33892ccb7eae9ce005bf64fb9240bb71ec335b76c3a3a1`  
		Last Modified: Thu, 05 Nov 2026 08:10:43 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a63cebe6d1a8ce07ebe5b91360a624d96699d727a1130a604307974a01397b5e`  
		Last Modified: Thu, 05 Nov 2026 08:10:43 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d4419ae363bc71ca640e224189634294ee0718b65a9f3123e2d1ee8385fafca7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d69444ae6b6d93f411864542c7732b09870a276bc78883443b9739c378d388b9`

```dockerfile
```

-	Layers:
	-	`sha256:288c222152d220d22cfde40e1e0dc0a6cbfa2d4b630466eb1cc150e7c075b9d4`  
		Last Modified: Thu, 05 Nov 2026 08:10:43 GMT  
		Size: 2.7 MB (2738167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd4d484e3159888a2b1c9ed9f173177e545f6c18368f021303e4b140fa1cae07`  
		Last Modified: Thu, 05 Nov 2026 08:10:43 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:508028fda277ff68a2fa933a0b18f9838fc0e8acf13b9ce6fd963b158c657267
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.3 MB (207258005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a25ca5d3a99ab4a80466007ebaa861ffc5e9c33c9b4d187b8e67954106da674`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:18:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:18:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:18:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:18:39 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:18:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:18:39 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:19:46 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:19:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:19:46 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:19:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:19:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:19:48 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:19:48 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be8d43f19e123b553c2d09324b0386211bbe5f88bf0258789102110ce5da0698`  
		Last Modified: Thu, 05 Nov 2026 08:20:09 GMT  
		Size: 156.7 MB (156691635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7099a9ce41f15bd06ad08e28868699db72ed231b4fcbc8af536e99170fed4b4`  
		Last Modified: Thu, 05 Nov 2026 08:20:06 GMT  
		Size: 17.9 MB (17906402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d651c1a57dcbebc86b1b515a60a9c140a060f1afd2e975f128380fae11b155ef`  
		Last Modified: Thu, 05 Nov 2026 08:20:05 GMT  
		Size: 4.5 MB (4515178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b1f68beafcf9e6eff083a103deef15e3a8dcdf1ee088d5be1ca239b765c2aa`  
		Last Modified: Thu, 05 Nov 2026 08:20:05 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:71981405d63e167c0d53fd224a7062e5bfde4bb7c68246ae37c6df1ac00c048f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1a1656c30613b50bf5b4c39da5399d429b9d10268c2b214fd1ddc05056ef6ea`

```dockerfile
```

-	Layers:
	-	`sha256:4e12b97d4ccc2cd27cfa3f44cbc0a802f089916018d222fe76712e2f441cd10c`  
		Last Modified: Thu, 05 Nov 2026 08:20:05 GMT  
		Size: 2.7 MB (2737782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14bac531c5765f7a18b8d9104ada8a81d63bf20e0b8a8b95cb444083016566ce`  
		Last Modified: Thu, 05 Nov 2026 08:20:05 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:be7005eb4343e705accc033e1544aaffd10a3f51218c436a1734304010331858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212461784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1c245893789670a99afb7af1d682e8e24cf95a25f8bbae7f3c2873c98580f77`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:49:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:49:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:49:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:49:08 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 15:49:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 15:49:08 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:52:09 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 15:52:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 15:52:09 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 15:52:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 15:52:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 15:52:14 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 15:52:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d00ab57e54146656986c1b7733b67f6124d946328177a69a693d4f11a2f0950d`  
		Last Modified: Thu, 05 Nov 2026 15:53:06 GMT  
		Size: 157.6 MB (157573237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5442d4ac34b6dac714b8d62e407980a93d477a96f3bdcb3cbf97f880dbf32eb`  
		Last Modified: Thu, 05 Nov 2026 15:53:03 GMT  
		Size: 18.3 MB (18279342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a9cf31c85ec4a6c335d92e3fb3ba3688917b928e687bd8d079158e1e615a9df`  
		Last Modified: Thu, 05 Nov 2026 15:53:02 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3386ab9ba843fb1a9229a4ef426f6c4cfd1a7b681dd0f13b8c2ceb103130d811`  
		Last Modified: Thu, 05 Nov 2026 15:53:02 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6be741ae427b5d98d311b8d50d36dc3fc4deb5e882afe222820a3f5ba3a9ca18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2756571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ec3f1896fa8e16fc075fc6eb7aa71d284e119b3153c402c8f797ccb89e04f01`

```dockerfile
```

-	Layers:
	-	`sha256:443beadcd10f9276958e3252c99eb1bcbeb5ccb3f5b77d607eff357d050d4d49`  
		Last Modified: Thu, 05 Nov 2026 15:53:02 GMT  
		Size: 2.7 MB (2738754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e18d5d49d9117e205b27a054042ac61c489cd1857b9a20b739bdfcc3ea1787d`  
		Last Modified: Thu, 05 Nov 2026 15:53:02 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
