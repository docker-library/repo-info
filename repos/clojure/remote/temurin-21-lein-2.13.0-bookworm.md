## `clojure:temurin-21-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:34e091e05870a714c6d6f58a734d4d7fcd6f180818297a23eade9b6899d03355
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:a6a69ebbcd4100562f084b4b7013f67340bf95e1671788573c4f6e32fb55c6df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231287884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5c7116c1d0ff074daf24f69c8880ea8b18de46d23d40c71d2ddd879900f9de1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:18:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:18:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:18:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:18:15 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:18:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:18:15 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:19:30 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:19:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:19:30 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:19:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:19:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:19:32 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:19:32 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb0a50818b4764402abd1d5025c6e673c1e5f643322cdcf3bf06b2757b48375`  
		Last Modified: Wed, 21 Oct 2026 01:19:54 GMT  
		Size: 158.1 MB (158117470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39fce945f025c541ddd760be705538472194ceca4279a8cf74b3fb93d25d515`  
		Last Modified: Wed, 21 Oct 2026 01:19:51 GMT  
		Size: 20.1 MB (20132738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74e42a119c84d783feb035e03a4411aaeee55ca8369592374a98803a14478085`  
		Last Modified: Wed, 21 Oct 2026 01:19:50 GMT  
		Size: 4.5 MB (4515161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e38bfa4817b0875da71e588946963218e3971217cc16e85f58358ca3306747f`  
		Last Modified: Wed, 21 Oct 2026 01:19:49 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:63026728330ec308b005fcaf1f4d714078a7fc581eaf657670573021fe8db81e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4308894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:515e5caf516bf56fea081de1687a6a54593035cf0e99481ff3e1347e6a59412c`

```dockerfile
```

-	Layers:
	-	`sha256:98db3c5646df0daf3df6f6a347712389bfed3ec166f83ccf2ea70d1937ee559f`  
		Last Modified: Wed, 21 Oct 2026 01:19:50 GMT  
		Size: 4.3 MB (4290506 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9eb1d9c95b081f1b9dcbe227f0423ba39510f8cf7a49420480b8439ce34f080b`  
		Last Modified: Wed, 21 Oct 2026 01:19:49 GMT  
		Size: 18.4 KB (18388 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e35544608d78dcd6fb0a0a3057a1e61c68fe4a7ba8971de8ae9453d065c61cbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229285992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72bb49cbb51d0ad5f9960c2ea9eafc9ff0659b523c0e83ea87820ee25d56fed7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:24:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:24:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:24:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:24:33 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:24:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:24:33 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:25:42 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:25:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:25:42 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:25:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:25:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:25:44 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:25:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7b91975a64870f743ccb4f4a3131353ce5a25b49dc332cf4caefd3ca42e142f`  
		Last Modified: Wed, 21 Oct 2026 01:26:06 GMT  
		Size: 156.4 MB (156400674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f91ad93aa54cadd00adfe15c98e61f5f4150760b73e7f690e253e252e4d6a8f`  
		Last Modified: Wed, 21 Oct 2026 01:26:04 GMT  
		Size: 20.0 MB (19966590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bb2f716b539efae16a302513b4cb9baee711d2ead7a27b6a87ad42e405479b0`  
		Last Modified: Wed, 21 Oct 2026 01:26:03 GMT  
		Size: 4.5 MB (4515188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d05ecc5b9b0a428fa8716c2b4b85dfaa41476e6fb0d34ae4dd93c5e8cb512db`  
		Last Modified: Wed, 21 Oct 2026 01:26:02 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:38f784bbb6beacf0ecb1acf681130d3a25ed1fff4af03ca8117fd8a2d3af89db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4308678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6be8e10a050e205de0e1e14cd25d93db001ee96a7254fd5fd15f8de1391fbda`

```dockerfile
```

-	Layers:
	-	`sha256:22095a3d022f357ac40c088642a29002edc2da51bdbcbe58f955f27e0f026b74`  
		Last Modified: Wed, 21 Oct 2026 01:26:03 GMT  
		Size: 4.3 MB (4290145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7d8a8323301dfce01ada614735e8898a92fd45b6fd6a00111a56c79cfe0c8084`  
		Last Modified: Wed, 21 Oct 2026 01:26:02 GMT  
		Size: 18.5 KB (18533 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:eeac8b54973e2b6c14d2e985dec593af3c461ec74defe10a0c9d4361d35a1d19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.0 MB (237991911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf19801efc0d3c7b75a20528390ac9f01a2a9d288363348b75e18b44d318dc63`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 05:53:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:53:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:53:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:53:33 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 05:53:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 05:53:34 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:57:27 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 05:57:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 05:57:27 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 05:57:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 05:57:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 05:57:32 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 05:57:32 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:454a6516edd6cce309c4a99668a28857653e2f7e8f3e3cb3e0a1986b0010acfd`  
		Last Modified: Sat, 17 Oct 2026 05:58:23 GMT  
		Size: 158.3 MB (158282647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15f1027a49f8ba092850aa83efabf5e53be47c667d057e27b2e0877b183fe38`  
		Last Modified: Sat, 17 Oct 2026 05:58:19 GMT  
		Size: 22.8 MB (22830895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f575fefae3cf8560eec70336aee246c5e65fa0c9732fe9c831ef8ffa01f34f5f`  
		Last Modified: Sat, 17 Oct 2026 05:58:19 GMT  
		Size: 4.5 MB (4515200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95dbe99625cff305964a3d001c2ef11582faf8ecae5c040739d03f2138684984`  
		Last Modified: Sat, 17 Oct 2026 05:58:18 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:69079b1acfd58955913d35cc18628d92463284fa98dabcd308e1cfb683ddf443
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4312117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64dd38f9d91d4c7b241598ee0e7cbfcb752e883935661e7bc956ba1512ef4a0a`

```dockerfile
```

-	Layers:
	-	`sha256:01bdefc4a1b65b498cc7a823e003fe5eae92de076e1ccc43d56df60425092c82`  
		Last Modified: Sat, 17 Oct 2026 05:58:19 GMT  
		Size: 4.3 MB (4293674 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afb21b6aa0a62b09e41059eb8dba9cc2837a588d85eb3493c07c6b55c7a0afdb`  
		Last Modified: Sat, 17 Oct 2026 05:58:18 GMT  
		Size: 18.4 KB (18443 bytes)  
		MIME: application/vnd.in-toto+json
