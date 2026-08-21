## `clojure:temurin-17-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:aa31d8c865afab69a17f34d4d68f2f10a4559f7cb85380c7be825eb2b954513c
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
$ docker pull clojure@sha256:56e53bc3ab31b156b37a5134128ad640c7279b5c222917ed3b614759e57c6fbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.6 MB (196643701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f88f14c39efc93a42de015c0c573b7a3d418cc66dc4801734b93eda871e1468`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:13:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:13:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:13:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:13:09 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:13:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:13:09 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:14:18 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:14:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:14:18 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:14:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:14:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:14:20 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:14:20 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b503e8f90acbca0f9be3cb789e8371a383e524a102956805f01da0ad0dbfc878`  
		Last Modified: Fri, 21 Aug 2026 19:14:42 GMT  
		Size: 145.8 MB (145822664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cef0dc106cf91ff06cc79cdaf181d4dafe08d2391b80a7d91521a02cd8fe2a3`  
		Last Modified: Fri, 21 Aug 2026 19:14:39 GMT  
		Size: 18.1 MB (18072792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1bf496537c9897009879cf667047c53490d0e82456d7aee9084cb72e70716a4`  
		Last Modified: Fri, 21 Aug 2026 19:14:38 GMT  
		Size: 4.5 MB (4515226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de9826699edde8d268ef0599f9a226f50ba6ef9b02ca10507a8188a4d6ff0d78`  
		Last Modified: Fri, 21 Aug 2026 19:14:38 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2777d88ae10f9b4fdddd7f94b005113d43067ffbcb32233e0ec4ef2ee756c14f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56d9921eac825af47cc50ff271e970cf13d472841a5c3e5ce42ac65c929d220f`

```dockerfile
```

-	Layers:
	-	`sha256:d59a798805ddcb4daf90f8b59d032ac20b67b36c690771d5c18594ede8216efb`  
		Last Modified: Fri, 21 Aug 2026 19:14:38 GMT  
		Size: 2.7 MB (2737574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:329f67f78eed35e2105c93ed0ddb94475a30c176685ca730a383f6d9fd36d55d`  
		Last Modified: Fri, 21 Aug 2026 19:14:38 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d9e663bbc4ff3fce03540eb219e41fc6cce930742c0f2f5f269488a7f28412a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.2 MB (195186836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8475dfdc147fe274a30ce92c006d653fe1814fb0334e28ca1785223cac48d93b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:03:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:03:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:03:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:03:20 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:03:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:03:20 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:04:27 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:04:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:04:27 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:04:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:04:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:04:29 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:04:29 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86bc2151f95623bb6f5145824cb596e7a0bebad763e8807c659e79018bdc71db`  
		Last Modified: Fri, 21 Aug 2026 19:04:49 GMT  
		Size: 144.6 MB (144647513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed9b31221b0e492ea82a0f1873572430c582814787766679b3fc1c32db0ec475`  
		Last Modified: Fri, 21 Aug 2026 19:04:46 GMT  
		Size: 17.9 MB (17906457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97982c30e4da67079758ee02bd5b6ea67da71e18c557ca3d6227c6d048e2a393`  
		Last Modified: Fri, 21 Aug 2026 19:04:46 GMT  
		Size: 4.5 MB (4515234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:921e9290c4fe8a5db1ad19c25c6d6ec10d2741bde2e85ebf12b5d71ddffd84cb`  
		Last Modified: Fri, 21 Aug 2026 19:04:46 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f16f60de8f75f3c6d66a3be26747972ba2e8e8572e24cc61ff38b2dcc4897da9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d34d6634795ccaffbce5a7419f17a43d973b6f1b52a06dd63df31a53ebabfcdc`

```dockerfile
```

-	Layers:
	-	`sha256:2243417a86859994e2a40fbda2e91c91221fa96a35690756fbde4b7b746bd0a7`  
		Last Modified: Fri, 21 Aug 2026 19:04:46 GMT  
		Size: 2.7 MB (2737189 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fc749a154b07bc14b3e99597af199cc23b75a7fbfce9aa28aa3640e0f3a7bf5`  
		Last Modified: Fri, 21 Aug 2026 19:04:45 GMT  
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
