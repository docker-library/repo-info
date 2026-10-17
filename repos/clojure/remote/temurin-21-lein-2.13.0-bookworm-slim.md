## `clojure:temurin-21-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:7a9efcb7755b559ac6d15e3f3a43b0626ec40b6fb1b1cef92e175426f26515ab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:72f03938e93aa2d4d9cf52176bb2130680f9f0c41cdb16e03dd0aa625d091c51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.2 MB (211244884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe7088c213d167bad3597de4389c0f2fffc84ea31d81e8ad29a929fa66d1a0bd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:50:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:50:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:50:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:50:01 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:50:01 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:50:01 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:51:18 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:51:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:51:18 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:51:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:51:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:51:19 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:51:19 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee4de8b0e346e250727575967d6af8ccb4b118fb2f3776409cd04d40b930afe1`  
		Last Modified: Sat, 17 Oct 2026 01:51:40 GMT  
		Size: 158.1 MB (158117473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5620074a25ede188bfcdbb6302f71adedc3804917dae8ecaf490abb95c0acc`  
		Last Modified: Sat, 17 Oct 2026 01:51:37 GMT  
		Size: 20.4 MB (20362468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de15c0c1bd2f6727af2acfc78e0ad2b0b28633f62ddd56564edeca258209ae7`  
		Last Modified: Sat, 17 Oct 2026 01:51:37 GMT  
		Size: 4.5 MB (4515191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14cc6c371ba77bd9681e6d1c4986a24ecaef539da48a3a1a7c7c67f833245fa9`  
		Last Modified: Sat, 17 Oct 2026 01:51:36 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8082a7d9e15029a9ac633ad1deca4b5f6d0e0f2ff37869a5a15256d5746cc397
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2757242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0347d86914475ce35a887c9377dbc1cdb629a39c136999f4c0a16c30d0a4dd5a`

```dockerfile
```

-	Layers:
	-	`sha256:cc143c1ba91e16832b77e71f96abc98c19cbedabc20abdf48a2942b286e5be7c`  
		Last Modified: Sat, 17 Oct 2026 01:51:37 GMT  
		Size: 2.7 MB (2739470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71e3a61f992f58e2a15afb61be5624493518c7148bb36c1ac9e98f80313e7471`  
		Last Modified: Sat, 17 Oct 2026 01:51:36 GMT  
		Size: 17.8 KB (17772 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:663c0e9a95f795889d0f2bea4feca870013d4a0fa4d0fe7b4bc9eb7e1b445ec1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.2 MB (209209785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ddcfdf2593f18c474367385baeed1db2e8bceeb29a69e8c1f5ac92e1b6b6d92`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:50:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:50:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:50:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:50:02 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:50:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:50:02 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:51:15 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:51:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:51:15 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:51:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:51:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:51:17 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:51:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d4006cbdb722691199d0db2b1081ac0eb5e5e7bed171e88ea4c99a55182ba25`  
		Last Modified: Sat, 17 Oct 2026 01:51:38 GMT  
		Size: 156.4 MB (156400641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86b07b6c4756f216b7f37fb648fef1ebd0ff798a17521bcd447e0a28b73dcf93`  
		Last Modified: Sat, 17 Oct 2026 01:51:35 GMT  
		Size: 20.2 MB (20156322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:553993069f76f645b6e7699102822e20bd83178c898b124bfab59fa149216117`  
		Last Modified: Sat, 17 Oct 2026 01:51:35 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4a6e1eb2cf0f50a6bc8444ec90d8da86f30afde69caf4675d393036809be913`  
		Last Modified: Sat, 17 Oct 2026 01:51:35 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cda7e9be703eabdc9faea1301279fea6c798b6d9a1a77c93ab21b88f1f2c2b60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2756978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e39863b66e0adebfe7ab763064aaa1f98cddfa560d0130ca8ef4febba0462b93`

```dockerfile
```

-	Layers:
	-	`sha256:c6182bb00152a268b25cff41a59a263837a80ed4a62db886c104c0db857f60ac`  
		Last Modified: Sat, 17 Oct 2026 01:51:35 GMT  
		Size: 2.7 MB (2739085 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7156a65b3cfd8609359fb56dc94288347377731f031000f06b0ab3778a69c430`  
		Last Modified: Sat, 17 Oct 2026 01:51:34 GMT  
		Size: 17.9 KB (17893 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:db652b78a70eb522dd5e67384e40e3624a336e1d145151ff8f5d4254f27b421d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215626362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b7977b4a624ef821a48a9e4daab993f9ac6e852e02b404a475f465aadd266d6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 05:54:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:54:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:54:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:54:40 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 05:54:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 05:54:41 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:57:49 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 05:57:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 05:57:49 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 05:57:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 05:57:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 05:57:54 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 05:57:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7593202845ab98fc7d37dbc710b97478d09d50c58de70f5671c2d3613ba77de7`  
		Last Modified: Sat, 17 Oct 2026 05:58:43 GMT  
		Size: 158.3 MB (158282663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac7902f4ab7d97b3c80f6b23379e1dcc8fc915e4ffdf6e688bf4fceb075944f`  
		Last Modified: Sat, 17 Oct 2026 05:58:40 GMT  
		Size: 20.7 MB (20735608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:077ff0ab6d331011d2c0e8d8a18d383bbb17fcadcf1d6efa33d1147398437503`  
		Last Modified: Sat, 17 Oct 2026 05:58:39 GMT  
		Size: 4.5 MB (4515227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf4c02220435da0ed0691a9f25e11bd974c89aa7b1e45a7c02defc3e1a10ef7`  
		Last Modified: Sat, 17 Oct 2026 05:58:39 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6a5d48154f26598812496a73854e56d722fd3f89383a9422eaab78b010af1a4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2759120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae94cad81ce2e80c4134638319a5d949820c80139d92a98f4f0335421d0c60f`

```dockerfile
```

-	Layers:
	-	`sha256:1f1619324b96e6c8a7baa20b4dbba2f976cdf2bfa6144eea27be73da97df04a8`  
		Last Modified: Sat, 17 Oct 2026 05:58:39 GMT  
		Size: 2.7 MB (2741303 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5a4382a3fad86f4ba3ad0f06c70c026ae1c90b811527d54cece49064c5ccdc5`  
		Last Modified: Sat, 17 Oct 2026 05:58:39 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
