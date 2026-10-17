## `clojure:temurin-21-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:87b81cf7114110a5a7a05cd484ebaa030e0f08e8a78f574f8ef67c5aeff1e91d
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

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-21-lein-bookworm-slim` - linux; arm64 variant v8

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

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-21-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:d86e7c02158c6144139b643a03d346cbaa907863b69a7aff004a937cb47a8a46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215625897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efdfe7f7bcdab1176b4ed4f38c6e4f4ae9d00e2657ac24c1ea2ee93156754184`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 10:17:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:17:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:17:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:17:44 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:17:44 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:17:48 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:21:42 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:21:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:21:42 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:21:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:21:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:21:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:21:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb11497786ec274381b07071fc31623f952946862f1a8776f0627ec34640565`  
		Last Modified: Tue, 06 Oct 2026 10:22:39 GMT  
		Size: 158.3 MB (158282661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8d4e95e05f45f0a6750d3d5408e825122abc4c84458072ff5f037baa953a8a`  
		Last Modified: Tue, 06 Oct 2026 10:22:36 GMT  
		Size: 20.7 MB (20735180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60979da05ccefa4c1b501ef5b7531222ce1ae6c92813ed9db32ce97d5c8bed31`  
		Last Modified: Tue, 06 Oct 2026 10:22:35 GMT  
		Size: 4.5 MB (4515192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f8bd238e8b9f56f77a69afea45e1fbb25fb5004a411e39bda0f568d95a6f991`  
		Last Modified: Tue, 06 Oct 2026 10:22:35 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:26054dbc3fff7a253c4e34083ca4f70fdd506768b997ef95ff92fbfa54ee280e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2759120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dab57ecb345ed7e2e31db5f4d138256e642777633f1324363a446030e5ed9948`

```dockerfile
```

-	Layers:
	-	`sha256:da9fe4015f87fff76868f95513d6339bf90d5475cde364657104d58a9afed161`  
		Last Modified: Tue, 06 Oct 2026 10:22:35 GMT  
		Size: 2.7 MB (2741303 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4104e8980e770280b3b93b3d00bd8132e5ee67f15c244d845f0254bd5425c830`  
		Last Modified: Tue, 06 Oct 2026 10:22:35 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
