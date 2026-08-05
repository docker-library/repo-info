## `clojure:temurin-25-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:a6108608c83e4210d69e0c2deefd3170db9afe2ace61a9380e70c11f125843b2
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

### `clojure:temurin-25-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:95d6351e094ebaea32fa6466fe8662642ccd0160fd391a24892d746ff7c13acf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165293764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5af777c08a17b8bf5237cb03f82cb26a0feed66a47ac567e39216916f0852a18`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:24:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:24:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:24:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:24:06 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:24:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:24:06 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:25:23 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:25:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:25:23 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:25:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:25:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:25:24 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:25:24 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:098505404c97fcb423b299d49c4447dfdafc37b5bf1dfc05b3a9bd77f23d068c`  
		Last Modified: Wed, 05 Aug 2026 01:25:45 GMT  
		Size: 92.6 MB (92574564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbc017414a3754b53ddcebcedf5f51438a8b52f46c1bd6379102aa6eebbbbd8`  
		Last Modified: Wed, 05 Aug 2026 01:25:43 GMT  
		Size: 18.9 MB (18891274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:080c6d659c861f9181e4a76cd0fc7b54221782c5265492a2264c1d9440a7dda4`  
		Last Modified: Wed, 05 Aug 2026 01:25:42 GMT  
		Size: 4.5 MB (4515183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e17c02ad6b10d9d11ca4a12edda53d225f632943603cc60deb67fdcbd77113a`  
		Last Modified: Wed, 05 Aug 2026 01:25:42 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ff5dc8c2610495e3191902ed4b7fc710ce3e718c287924143603f15faff52a7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3804228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:664b969903f0e0b8e14a7e41df3f3eb7205afb73895294e3c5dd998ecbd6dd70`

```dockerfile
```

-	Layers:
	-	`sha256:0cab0cc5caafef2464395cb3c9d5f214c812335579c3cadde86bc829d6e9480f`  
		Last Modified: Wed, 05 Aug 2026 01:25:42 GMT  
		Size: 3.8 MB (3785884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ebe8a9e04666f097eb389d3ac5e3b992e98f9c323685ed11a5c04069d13578c`  
		Last Modified: Wed, 05 Aug 2026 01:25:42 GMT  
		Size: 18.3 KB (18344 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:38619f891d6b8c1376b4192d13684522e1144a12687b28f9f460ae43b21ca3e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164571189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00768a6a81aa4d5e29a0d345a1a88229edad4642a95a9c709940389e1dbac977`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:30:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:30:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:30:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:30:08 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:30:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:30:08 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:31:27 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:31:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:31:27 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:31:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:31:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:31:29 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:31:29 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:669ecab869f2e75f9261f8efea625933f1b431cf65f2a054d6f692261f84fc7a`  
		Last Modified: Wed, 05 Aug 2026 01:31:48 GMT  
		Size: 91.5 MB (91542236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e473b59e053f6e5f75dc4ee457932ace8ec35adc7fc5702b270acb5afbff2fce`  
		Last Modified: Wed, 05 Aug 2026 01:31:47 GMT  
		Size: 18.8 MB (18839469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf3afb798eca5c727564c37089892e88e691820874965e11f0c3f7efc5449802`  
		Last Modified: Wed, 05 Aug 2026 01:31:46 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a4f7264684309ca2cb956dc7622981224cd4d413436c1482563d72156528062`  
		Last Modified: Wed, 05 Aug 2026 01:31:46 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:07312d002fe80aa47ae15ac56948577f480bd4dba7f20b22beffc684038168fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3804635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad887381a979e7df6a258b86ff8fa2f7e0c29cdb2808b15f0607f826e3a4624b`

```dockerfile
```

-	Layers:
	-	`sha256:93767ae292a75f3134202513c168f8f2304c3004c13fa905ead93ea9c4c48248`  
		Last Modified: Wed, 05 Aug 2026 01:31:46 GMT  
		Size: 3.8 MB (3786145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ef31ca5aaa18ec16adc768f0bc6472901ba7a290ef7fdbdffcaaa9948e4482b`  
		Last Modified: Wed, 05 Aug 2026 01:31:46 GMT  
		Size: 18.5 KB (18490 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:0739700cfe14d8790008aa329790667239f258329a31abb49505094f558f0f20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168499763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0cc63042397e8f6dc90e0272b084fd663b15255a19d9f7bd9a452a4d3f5f233`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:52:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:52:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:52:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:52:54 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 07:52:54 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 07:52:54 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 07:55:42 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 07:55:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 07:55:42 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 07:55:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 07:55:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 07:55:46 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 07:55:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7af2f2a5db7a79898d4cfffc627f977cdb8e72dce1a2c4396c402c7e8ced0e86`  
		Last Modified: Wed, 05 Aug 2026 07:56:20 GMT  
		Size: 91.9 MB (91914017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234b70dbdf0059c937f83f2ed5b8cee620d7a855ee07b78a2a7240e3572c579a`  
		Last Modified: Wed, 05 Aug 2026 07:56:18 GMT  
		Size: 18.9 MB (18936516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6aa1f7711565848d79c112f63ed9e008075d0e571b685c511bed531cbfe275e`  
		Last Modified: Wed, 05 Aug 2026 07:56:17 GMT  
		Size: 4.5 MB (4515196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81ce47d0de2f8a2eccc94d0f56bfda4199871ff73dcb64907e59019a44f3bfb`  
		Last Modified: Wed, 05 Aug 2026 07:56:17 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:bae3b6008cf931a20f43dd125766ee2f4e966487e67d12b89c2609a3699a9a1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3788609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bf3e18a350c2f5b19da5a321fb920a620e8e6c813cbb1b18c017eee6cf51c5a`

```dockerfile
```

-	Layers:
	-	`sha256:e71c42f1e181d80740628ef1ca8d954cb589acfcde4b1f099a5fb7cbc04a2c78`  
		Last Modified: Wed, 05 Aug 2026 07:56:17 GMT  
		Size: 3.8 MB (3770208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cac7f58d907b69a009eed8a689946c051d8a080dae678781d918cec05427f15`  
		Last Modified: Wed, 05 Aug 2026 07:56:17 GMT  
		Size: 18.4 KB (18401 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:38826b5438b122f1453c5d0e5576723cdbc2529600486f6c311092cb6086185d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161239905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d26657fa3a9779994870d9dc3dc1549fe515d6e539cddf365b23a87bfaff111`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:49:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:49:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:49:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:49:48 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:49:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:49:48 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:51:02 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:51:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:51:02 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:51:04 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:51:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:51:04 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:51:04 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057496d5f2c6be61b50be1fa5220b5fcd7f5354d90cc41d88babbde4bc230aae`  
		Last Modified: Wed, 05 Aug 2026 01:51:31 GMT  
		Size: 88.4 MB (88420356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04a30242b5a5e937141663ee5d3faaa08d24ecbaa88c111166fb6e2f20594166`  
		Last Modified: Wed, 05 Aug 2026 01:51:29 GMT  
		Size: 18.9 MB (18922481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95b005e058c4de8ea7e83f9a9b076294e4d7fd5f66e26260e852a9b521afd94b`  
		Last Modified: Wed, 05 Aug 2026 01:51:29 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9965bdba62c93caa4744e3a7642a3f24d5bffa39d64302b28df0c75260e68320`  
		Last Modified: Wed, 05 Aug 2026 01:51:29 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:0af4b0ee176baceb9880a90a013aacb5f13cdac6b285a95b296e1783fc0ac883
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3785217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4e1461d3014ad957febaaccabae66e15268e5dbd0edc57178b5677869348ef6`

```dockerfile
```

-	Layers:
	-	`sha256:2eef56e021e5691e2bcc4d510c4ef45769b985323c554ddd2967ca004d7b2398`  
		Last Modified: Wed, 05 Aug 2026 01:51:29 GMT  
		Size: 3.8 MB (3766873 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfba7fe5949390cbe672bafa491a98c5eb5b75c6991071f83322bed533b80ae7`  
		Last Modified: Wed, 05 Aug 2026 01:51:29 GMT  
		Size: 18.3 KB (18344 bytes)  
		MIME: application/vnd.in-toto+json
