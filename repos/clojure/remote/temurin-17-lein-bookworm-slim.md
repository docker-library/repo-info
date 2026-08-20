## `clojure:temurin-17-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:9d3fa1175f2c4d1d3cb8496cf0ee2338db77dda59156b0cfd2f46e0a5efe6de4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-17-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:191f94a19b9bb1424d36ddbfabe904086f218f4b715ce3ed906dd52c7d7a49bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196726384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caedfa6ef862ad8fce3771a0f83a4c5471a16155d533a4323ab284ba743ab77d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:43:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:43:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:43:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:43:38 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:43:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:43:38 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:44:39 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:44:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:44:39 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:44:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:44:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:44:40 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:44:40 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55fa3b9a1dbd07dc81d727186257080113bad80233e03e06f306b236fbf198eb`  
		Last Modified: Tue, 18 Aug 2026 20:45:00 GMT  
		Size: 145.9 MB (145905453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00fe5fbc1962b0e320e972030c039dd03838e2129d3ba7d1df6404ed65b8a0d4`  
		Last Modified: Tue, 18 Aug 2026 20:44:57 GMT  
		Size: 18.1 MB (18072718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8919825851374da18015f786449351c7ac3cc6b978845355d5b50f93f838d580`  
		Last Modified: Tue, 18 Aug 2026 20:44:56 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65e567d4259543d63cf7d4dacc8f1ede9e2b665eafcd8c4ea51f563d1e8dad85`  
		Last Modified: Tue, 18 Aug 2026 20:44:56 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3d8674b53bbce0d6f676e53b655efb272b3edd8c170e118447da290020399e5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75a8ad9585331ded7595eeff8a4ad35de2f683660d41482f94a83ea25133dc45`

```dockerfile
```

-	Layers:
	-	`sha256:b78f0dc64e0c8c3f856d64e6b288f672b9ee0b8c9b2afa2df5802d37a74dfbeb`  
		Last Modified: Tue, 18 Aug 2026 20:44:56 GMT  
		Size: 2.7 MB (2737576 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f153e93407efff95f8640c596634672bfad203b47b1c91cea0f5dd4d20bfd95a`  
		Last Modified: Tue, 18 Aug 2026 20:44:56 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ff0b10416e9a43ff453963beed26ccb79db3a83fe978861b8ffb3fd000090714
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195263783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c12f0bf46b83568b4b9b4a1841ca96729c95d26ba471c31e4f8ee0e0e741c949`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:44:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:44:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:44:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:44:02 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:44:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:44:02 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:45:09 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:45:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:45:09 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:45:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:45:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:45:11 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:45:11 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b05fd7c9c8f1ba670f5be886f59a754a0c7b843558f46763e5b2db12f01ca059`  
		Last Modified: Tue, 18 Aug 2026 20:45:32 GMT  
		Size: 144.7 MB (144724297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9061dff19f15765b4b0e2cc291f81729a352b1a13520ef5f9f72aa05905c1542`  
		Last Modified: Tue, 18 Aug 2026 20:45:29 GMT  
		Size: 17.9 MB (17906634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f463da7a0d843133ed2e10d9131cea199ecf67c341ed12e391dc15e27f43e11`  
		Last Modified: Tue, 18 Aug 2026 20:45:28 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c502239ff722c67c37c3efcc2ad37d3f32a58591738a7b5fb3343d7b940a544`  
		Last Modified: Tue, 18 Aug 2026 20:45:28 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cb43e1e8c15edd9c2af9188f9f7b69865932ae79d99112bda73a7539854ac6aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:287b4407b8096e44b7860491aa74437724fab10a7020d64e6e3b4ccd2fdb22a5`

```dockerfile
```

-	Layers:
	-	`sha256:dc613d930c18c8e456ba0775e5700a6b5221336769c93821850db09e767525d8`  
		Last Modified: Tue, 18 Aug 2026 20:45:28 GMT  
		Size: 2.7 MB (2737191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:901240de2c7e8af3add808cf4fb29624412273f2f0bc3b63079964f3ea3c6d73`  
		Last Modified: Tue, 18 Aug 2026 20:45:28 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:7b7575a26d3ae8db4139668b891779262562ffb790244d64e86db191413298b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200637211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd54c81d6d7fd1f2a6f1168d687ab17b7f87d543fa35fff3ab3d175db7a26cb1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 01:05:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:05:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:05:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:05:31 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 01:05:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 01:05:31 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:07:56 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 01:07:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 01:07:56 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 01:08:00 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 01:08:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:08:01 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:08:01 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4bedcc8a3b50b6aff0ce605bbd4f68d2774184b9b2dbd0c3c8dd4596ad66971`  
		Last Modified: Thu, 20 Aug 2026 01:08:36 GMT  
		Size: 145.8 MB (145766232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56796d779c3d1f20c0c372915e8f605a579dfe0d8dfe1f6b1e04d3870a446e52`  
		Last Modified: Thu, 20 Aug 2026 01:08:33 GMT  
		Size: 18.3 MB (18278993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c967295d95ebb703bc8183f6f509a749b5e624a78fe515e532949def2b62ab13`  
		Last Modified: Thu, 20 Aug 2026 01:08:32 GMT  
		Size: 4.5 MB (4515233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8fb9a97ddcc521d802e899cc638a922a980bddb19f6df6c38c51c6be99955fd`  
		Last Modified: Thu, 20 Aug 2026 01:08:32 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e45b6c819464706b58776cd713aac3acd2920f03df4da9cb0ec335979b5be579
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2757226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab7dbd08a9d00f3d9b76588f8f9e100dd1c6ac0036c4071ec202223bc6ee9486`

```dockerfile
```

-	Layers:
	-	`sha256:97b71258c69d7e10c698d3a4184c6ac230374445fa7e7d3d03ea1ad4fcacedae`  
		Last Modified: Thu, 20 Aug 2026 01:08:32 GMT  
		Size: 2.7 MB (2739409 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f40125ce6385793f8ecbafbe134b69e5abb28b69375363a75c66a457ca73e7af`  
		Last Modified: Thu, 20 Aug 2026 01:08:32 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:08af117e3d7bcf135df8197d4d0f422db793aa06054294968e8a242cc8144416
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (185039296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3954b1d17fbf097b76d5210fa48cd72274cc4f4d8d1fc1bb24f9825c31acab49`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:53:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:53:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:53:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:53:05 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:53:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:53:05 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:54:05 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:54:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:54:05 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:54:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:54:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:54:06 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:54:06 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e46e08b0e9e2fd3652f14029d08d559c0a676987ea34e3d6e74c4479d7b98a2b`  
		Last Modified: Tue, 04 Aug 2026 02:54:33 GMT  
		Size: 135.9 MB (135910428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2b6e69352a2d623816db9ac94d1e9a4f605044ee4b4250bd27748a71a89cb89`  
		Last Modified: Tue, 04 Aug 2026 02:54:30 GMT  
		Size: 17.7 MB (17724979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4114264c298dc540f8c891ee043d524f0c0174d6d9c2692f93df85b06aa0324`  
		Last Modified: Tue, 04 Aug 2026 02:54:30 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8b4bfb9303db53ec0df67a99de8d4090a8aec2d4d0ab88fac3f849d5029f892`  
		Last Modified: Tue, 04 Aug 2026 02:54:30 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3028854a13e93fdf1973a3b70ed7d41097a4a3fa746c3755b65e96c6235d948d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2741960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3877432518c6f397398afc1809de925b15751f9f53bbe1e041f2e8cf3c323a02`

```dockerfile
```

-	Layers:
	-	`sha256:61b908b9a575f985da1acdddac2d28808d3e838ebf3b59437275d30fefe37eeb`  
		Last Modified: Tue, 04 Aug 2026 02:54:30 GMT  
		Size: 2.7 MB (2724187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:590d561c4d1479d946dd1fd5acdb9f6dc587597c22a427b1fb7deb312a0ade9f`  
		Last Modified: Tue, 04 Aug 2026 02:54:30 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json
