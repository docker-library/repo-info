## `clojure:temurin-11-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:1079053ad56b8bbfabf0c8e8d43a1d3191e1aca8207f50af9e477aced63846d8
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

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:a6cc407157bee7418ab722e42e873b290cf2aaec9d281dba7b6424411786067b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219021232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ed4ec84261fe37891a24eaa79e1f8ed4420a8f1368b743298547062d91b78d3`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:41:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:41:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:41:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:41:00 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:41:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:41:00 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:42:09 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:42:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:42:09 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:42:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:42:11 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a57ec8ae03317a3d88002002c93023d62b1f20c303709e9af5b7d5ea7b9098bb`  
		Last Modified: Tue, 18 Aug 2026 20:42:32 GMT  
		Size: 145.9 MB (145884905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:614ff2351d94a28271953f348a1e1728664e054968937d97dadad1d7e51d4f42`  
		Last Modified: Tue, 18 Aug 2026 20:42:29 GMT  
		Size: 20.1 MB (20124013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eafe9243bde7f9a706d47d1595d73ee457dd106b46bccd9b20afd77269579b44`  
		Last Modified: Tue, 18 Aug 2026 20:42:29 GMT  
		Size: 4.5 MB (4515191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:79ad20b58537644d68b30a3f7086932d8f4665a5ed25d731941c60e7cd03086d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b13b891070e4e4925228a79b433d23dc907d84276115feb3d550faa70a57043`

```dockerfile
```

-	Layers:
	-	`sha256:7d3bc2418d1e999b5a329cb6a19ea1ce84ce35cd3df406484d84fb3ecb0c4996`  
		Last Modified: Tue, 18 Aug 2026 20:42:29 GMT  
		Size: 4.3 MB (4308773 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a6f751c9615c7718dec70858f6684e7f2bb175bfe9e180867f7907630ca11c5`  
		Last Modified: Tue, 18 Aug 2026 20:42:28 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7a223870f51602ede8f3ad15fc32104f49c213c0aa31b860321875ce1d9666a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215436510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6d6ee24c6fb4dc6c6da26ad2d2bd61b720b8c589a04d6304a13f690e598fcde`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:41:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:41:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:41:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:41:13 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:41:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:41:13 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:42:20 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:42:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:42:20 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:42:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:42:22 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1967eeb678839f15f3e6cb9fe655ae4915030f645b069fa8c942f3b4dabd7e0`  
		Last Modified: Tue, 18 Aug 2026 20:42:44 GMT  
		Size: 142.6 MB (142582129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0703bcf935f87757f878c337cad0ccc2b2cec2850f3a620d855190590778c719`  
		Last Modified: Tue, 18 Aug 2026 20:42:42 GMT  
		Size: 20.0 MB (19955763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21c3360ae51866f453c50423b52a5b823d88101058f77eb48a98913592d5949e`  
		Last Modified: Tue, 18 Aug 2026 20:42:41 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:964f1289d2795f48f83c35db3a1a8a47744b26b6c5e6a932d7fa1783f1d1df81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:810b7542e9a999fbc0ea1db881ad6670fa9dc227285d97e5d43d6c5de7083837`

```dockerfile
```

-	Layers:
	-	`sha256:971e4fe92904a9cb2bc015f0e68bb3fb7007c373db0cafc939d3729d64692a41`  
		Last Modified: Tue, 18 Aug 2026 20:42:41 GMT  
		Size: 4.3 MB (4309006 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31fc702fd3510857e9e78168c0704d566b7de5d7fc9ddbf9d542989205f803ce`  
		Last Modified: Tue, 18 Aug 2026 20:42:41 GMT  
		Size: 15.9 KB (15869 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:a03cf321b0ea4a8c19129f308cfa5bfd8f3ddf6ea63e41d91146b4925aee14a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.3 MB (210314948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4b6cefd6f859a6d7ab3549f7457a736362c6678420143cb86756b2512018a0`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 00:52:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 00:52:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 00:52:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 00:52:32 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 00:52:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 00:52:33 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 00:55:20 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 00:55:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 00:55:20 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 00:55:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 00:55:24 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fd376ff5969191bcbaf61490685b98edf392cffee3d7a499070089f169927e2`  
		Last Modified: Thu, 20 Aug 2026 00:56:04 GMT  
		Size: 133.1 MB (133110153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10353120d5172089224f6d0c0d1dca76e0e6cdf2f23ad2203ab6cae15228356b`  
		Last Modified: Thu, 20 Aug 2026 00:56:02 GMT  
		Size: 20.3 MB (20348090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05a916ee0f37563c9254c0eba731823e3eb9c863744a544e41e4fc0289a40127`  
		Last Modified: Thu, 20 Aug 2026 00:56:01 GMT  
		Size: 4.5 MB (4515196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:8022f2e015e6e9c8f935a61fa493eff437862c4c4129e43960b9d806e7f584aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4325811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81b7e6fd879e8d37d74c4167e6d9f45255c27429ac8a4d4f5dd38146488bb6f1`

```dockerfile
```

-	Layers:
	-	`sha256:e05d03834789a61ad051380e3783ecc4ce17128ee509a0a0b770599be74e7553`  
		Last Modified: Thu, 20 Aug 2026 00:56:01 GMT  
		Size: 4.3 MB (4310019 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70777a597230c9fcb02ad70fb26f58a4dfa89db0115ee8945715730aa7f3f280`  
		Last Modified: Thu, 20 Aug 2026 00:56:01 GMT  
		Size: 15.8 KB (15792 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:ee9200d7bf7e3e2e10484f6a81c1d9a1e2d06720d9d8d7ffe8349e52b08244e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.1 MB (198095037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d4261be3e9b32974d58c30737c04bc2bcc6349645fc4c2c47ae193d0ef4b5be`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:48:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:48:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:48:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:48:08 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:48:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:48:08 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:49:25 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:49:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:49:25 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:49:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:49:27 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d65642bbcc0659abb67fb458474d1565054b3f0c1bdf2a9931965ac027d18df`  
		Last Modified: Tue, 04 Aug 2026 02:49:53 GMT  
		Size: 126.7 MB (126652412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36d85ca611d3c68fede020667980128e2e175585648d4ce7c9a84dfb178bd167`  
		Last Modified: Tue, 04 Aug 2026 02:49:51 GMT  
		Size: 19.8 MB (19770084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b9e779124100c0c999cba9f62651ab66eccf7c37e6969fc1f5eafd8075d37b`  
		Last Modified: Tue, 04 Aug 2026 02:49:51 GMT  
		Size: 4.5 MB (4515230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b76d1fc1d381c50c11672fe0e69787df997a81cffc97df7b6304f7a7de175ff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4311136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df427527fef0247eca07ab0ea64e540ec38ecb020c5827a983668e549e4bc69e`

```dockerfile
```

-	Layers:
	-	`sha256:1b108ae6466c7d8e9c37f5d01b212b15a82d1d4c863e317b29f7873e186c1c92`  
		Last Modified: Tue, 04 Aug 2026 02:49:51 GMT  
		Size: 4.3 MB (4295388 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91a030ee785c8f6a672c3375205659bd969ced684675a9e95c1ef4da90f97172`  
		Last Modified: Tue, 04 Aug 2026 02:49:51 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json
