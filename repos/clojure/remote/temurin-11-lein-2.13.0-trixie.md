## `clojure:temurin-11-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:b162774fcb8ff72b605ce1f99c3391986f88f70ba683a274fecfaaefaf8fdf7d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:341a8dfbd7632cfbee2729fdca3ddc3e790fd26a325c735c2a1ee7012c6ac185
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.7 MB (218656321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:487aca9e817abd4532b16d00e536bd72ddb1d02994877a0780fe651e5de2bf34`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:19:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:19:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:19:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:19:16 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:19:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:19:16 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:20:32 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:20:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:20:32 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:20:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:20:33 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:475488cf263e0486ebbe1b946aa52c7fa82f65fd52804d33793baf335b4bf6fb`  
		Last Modified: Fri, 25 Sep 2026 23:20:53 GMT  
		Size: 145.9 MB (145864133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93c0df0ee7435411e707b3736e129b96913b70ad676a463fe0132c511e72666`  
		Last Modified: Fri, 25 Sep 2026 23:20:51 GMT  
		Size: 18.9 MB (18897281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7bdf656f9050706514b7276e72758073a6daff495498f59ed30256300efddcc`  
		Last Modified: Fri, 25 Sep 2026 23:20:50 GMT  
		Size: 4.5 MB (4515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e3a8a1fc3b177b5a14fe854a04e90307a329e2448e6d0ddc3453a11c43a8abe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3862997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e24903981b6b233e81207663b6fb3ba303155722dba59a1308b213c371b1cc3f`

```dockerfile
```

-	Layers:
	-	`sha256:0adde96cf0ce251d20582db4245c9f31bbccf662693e13b6cef62e63b0df76e5`  
		Last Modified: Fri, 25 Sep 2026 23:20:50 GMT  
		Size: 3.8 MB (3847263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c36c2071bcab2115f5520cec44db9780d96fce55add20339bd5bd06e04580451`  
		Last Modified: Fri, 25 Sep 2026 23:20:50 GMT  
		Size: 15.7 KB (15734 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0dbe4ec6877a1c72f383c312db2b7d481e4f51ecc8bcc940a9f620ba2d335a3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.7 MB (215685387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2546071cf132173b0d420b559a7e764f60eaa6892b76c02e8b871efd90a09640`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:17:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:17:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:17:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:17:14 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:17:14 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:17:14 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:18:30 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:18:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:18:30 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:18:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:18:32 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ac5a5ef1164be34352950b43c4fa8b48b4a7ec93612b0e93ac0fa9ec6dfa8b`  
		Last Modified: Fri, 25 Sep 2026 23:18:53 GMT  
		Size: 142.6 MB (142576518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22b633a293e56936a9f41cd83d7abb93fed52b32fb12850bda7d1f7f0cf1d882`  
		Last Modified: Fri, 25 Sep 2026 23:18:50 GMT  
		Size: 18.8 MB (18844786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:604362c959e34c57b1a6424414a1942f010afdd65a7fa20b6cb917b6d98ab9fe`  
		Last Modified: Fri, 25 Sep 2026 23:18:49 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:1dbf329c53f139fd0dbd1315d2518d180471b19edb90c0e01f557297007f780a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3863976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3aaac6fca68e5cd251f021d8725479d188c2dc2d4d9d96c360dbec1230dcc62d`

```dockerfile
```

-	Layers:
	-	`sha256:e2641dcc211509cd6a9a900e960884bcc794fdbb5cec71c9b1990127137db145`  
		Last Modified: Fri, 25 Sep 2026 23:18:49 GMT  
		Size: 3.8 MB (3848121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:666a49365b07fe3547034686d1d9f83c115e604cfea614708e53921254206720`  
		Last Modified: Fri, 25 Sep 2026 23:18:49 GMT  
		Size: 15.9 KB (15855 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:f67edc6de1dd8d3bd51450075d68aa0718230e56496494f6b80c2161001023c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.7 MB (209742306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c097641017044776abcd0848d0120bf6246032e10f76e110448b02b5a5bd5919`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 07:42:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:42:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:42:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:42:03 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 07:42:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 07:42:03 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:45:44 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 07:45:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 07:45:44 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 07:45:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 07:45:50 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fe82795a346148567fa5ea4d5a82702752cd07a4d8f174243f4ec32186837bb`  
		Last Modified: Sat, 19 Sep 2026 07:46:25 GMT  
		Size: 133.1 MB (133090122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d107069b799ad01acb75e02af58612f63e7a36779d4e95cb9a101ab78d2300f4`  
		Last Modified: Sat, 19 Sep 2026 07:46:23 GMT  
		Size: 18.9 MB (18941855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7868c5d72d2c20fa7ff45113c86d34a7170f677696717782860b76a72323b07e`  
		Last Modified: Sat, 19 Sep 2026 07:46:22 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:62942921878d1ed0de3ec00fb7410e8afa1c92d987f1de580e7b8879ce7541e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3863415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae2f0e5304f408823760ed59f4f04424d459d39f5f7ca8f5539456796796292`

```dockerfile
```

-	Layers:
	-	`sha256:b5ed847b0789e25361c148b4bab48918a9f43e783970e9ae143b72858779405e`  
		Last Modified: Sat, 19 Sep 2026 07:46:22 GMT  
		Size: 3.8 MB (3847638 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed443b919e844c560c07d0fd13f8a76647c5bf0c07bf9d23ea0b50f1c8858ed4`  
		Last Modified: Sat, 19 Sep 2026 07:46:22 GMT  
		Size: 15.8 KB (15777 bytes)  
		MIME: application/vnd.in-toto+json
