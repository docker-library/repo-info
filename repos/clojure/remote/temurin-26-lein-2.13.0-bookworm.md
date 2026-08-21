## `clojure:temurin-26-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:e29f1f4b1f50109b7bdd068fee4d29e1fe1bc3d5dc6f42e12d6d458e911b5e53
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

### `clojure:temurin-26-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:3a1e88fc87d726c7c13987d5a661ffea26c0d8cfc8d870f661fe73d7a4e0eed1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167700124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39cef19d4c46bfe7ab03175d93110d9d65585109e448599f24b334433dd0ab3b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:21:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:21:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:21:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:21:58 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:21:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:21:58 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:23:09 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:23:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:23:09 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:23:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:23:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:23:10 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:23:10 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7621fbfe4fae960e1c66dae576f9c83a66735b92f536bcc0fba7955780d255`  
		Last Modified: Fri, 21 Aug 2026 19:23:32 GMT  
		Size: 94.6 MB (94563696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0380ef2c9b2f0822cfd5f38015252c18eb26a42131b3c099dd356089041181f5`  
		Last Modified: Fri, 21 Aug 2026 19:23:30 GMT  
		Size: 20.1 MB (20123724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a26fa8befdc6f337e9e695e9f89457d16bc0939740208ebeae838c75a49ac254`  
		Last Modified: Fri, 21 Aug 2026 19:23:29 GMT  
		Size: 4.5 MB (4515183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6295a1d6b32ea66c71bef6650f144c7bbd5d50f98abd48cdd1bb8fa6662919a6`  
		Last Modified: Fri, 21 Aug 2026 19:23:28 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:2a172025e9111dc97b5da0f45550bfecb90601e53c57f2652f1c251e26c0717a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4273180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f97ab53fa649fb91af382deb120cb3efeb66871cc703798dfea627396d1da9f9`

```dockerfile
```

-	Layers:
	-	`sha256:c4d9d0b7419276ea79395e16384d37f2b7927749f9887b316b96f4d41f85ef5a`  
		Last Modified: Fri, 21 Aug 2026 19:23:29 GMT  
		Size: 4.3 MB (4254800 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b20b0c8ec6b31ff98e0b5cd4c632afdf1793de0c512a264309ecdc08868273e`  
		Last Modified: Fri, 21 Aug 2026 19:23:28 GMT  
		Size: 18.4 KB (18380 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ce32b14f7095f80570f5a54ffc8d6d7a942f9b2e8cf4ae1cef1a5be93e8d9a4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166397282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a4b95dc44977a412c359ca4367bb44451c3f3d82555de8e8cd869ea366cc390`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:11:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:11:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:11:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:11:37 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:11:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:11:37 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:12:49 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:12:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:12:49 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:12:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:12:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:12:50 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:12:50 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c12e0605724d1cabde610802020e6a9ddac74e4be9f0ef51cbe65d868cc4d14b`  
		Last Modified: Fri, 21 Aug 2026 19:13:11 GMT  
		Size: 93.5 MB (93541594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a07bf195e62cf94f83493a71e97e19e033b60996f5eae40406a289d27a84b37f`  
		Last Modified: Fri, 21 Aug 2026 19:13:10 GMT  
		Size: 20.0 MB (19956696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4174c45b52ad9d87e378e86b2493b069e38cbee1cd06822d40fa0552e8215ba0`  
		Last Modified: Fri, 21 Aug 2026 19:13:09 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70284b9649739d690ef8982c950993e6fe1741519a8ac75d37ae71cb1ef0bb80`  
		Last Modified: Fri, 21 Aug 2026 19:13:09 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:d63c58e240d59f17c0ddea5331ea248087fa48756de4a6fcb1402f6935aff210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4272962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa21983edf6d56f85eda448dae1c229587386c75ec62f7d8d04234645bc5800`

```dockerfile
```

-	Layers:
	-	`sha256:3181923daab07737cb1c9572fe4fb4f149e235e8adc13827148da3c45117b918`  
		Last Modified: Fri, 21 Aug 2026 19:13:09 GMT  
		Size: 4.3 MB (4254436 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c84870431d7f87f00a761297accabd40a71546f69f5b3319fe67421d778dded`  
		Last Modified: Fri, 21 Aug 2026 19:13:09 GMT  
		Size: 18.5 KB (18526 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:3e63a45f12600e292961990f4b402e668410f3171563d9f21ab30e6a0537585b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.1 MB (171107445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c54f873fa80421316de8b34562e8bd02de53df258f160bf138fedb2013f643c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 01:41:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:41:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:41:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:41:02 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 01:41:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 01:41:02 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:43:39 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 01:43:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 01:43:39 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 01:43:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 01:43:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:43:44 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:43:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f58526e30cc94ba4fc63d4be907fe3e1336bc95c0f01d9360d241ea14e481c`  
		Last Modified: Thu, 20 Aug 2026 01:44:34 GMT  
		Size: 93.9 MB (93902096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee52afb4cd377927906423e3eb59dca0c746a56583020bacbfe82318a79d091c`  
		Last Modified: Thu, 20 Aug 2026 01:44:26 GMT  
		Size: 20.3 MB (20348230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2185a638e8f0f49fdd05394c0c1b3b9c26d0c07d3d257af30e3cc0194959d7f9`  
		Last Modified: Thu, 20 Aug 2026 01:44:22 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:805a791f849a0f0e2b6df53b079a4d91f64818314afe1562a763db7702aa608a`  
		Last Modified: Thu, 20 Aug 2026 01:44:20 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:576ebe57790b3d42b5ab13ef347b0fd2823ec64c373b37863e3a85bb5c2eddaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4259044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8a8c400fc3324d0cb90dd45204dda4b71df3bf97843a84d160a8b78f5de0e69`

```dockerfile
```

-	Layers:
	-	`sha256:2df6f82839feaa0e906849f3ca2fdc0a7ecf8ba1ae3e161787ca8255cb60905e`  
		Last Modified: Thu, 20 Aug 2026 01:44:21 GMT  
		Size: 4.2 MB (4240607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:317ea3b56130d96db346cafea455a2da93e89d04a31caad1b0468d1c4b71c892`  
		Last Modified: Thu, 20 Aug 2026 01:44:19 GMT  
		Size: 18.4 KB (18437 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:298215bf16787138a82023c51a3b463ea580fe399db17fb883710b3ef9fac3cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (161979903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03558689279135e9c5d86ed1d0dc3302912380b5b04fe278c464e8e636101477`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 03:04:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:04:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:04:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:04:48 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 03:04:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 03:04:48 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:05:52 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 03:05:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 03:05:52 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 03:05:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 03:05:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:05:54 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:05:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b100b02d9fadd7ef6d3dd60d05e61617db916a5b1014ba714029c6f60cb0a65`  
		Last Modified: Tue, 04 Aug 2026 03:06:19 GMT  
		Size: 90.5 MB (90536989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa2af4c28d4d321c485e3f3c309db29ae3922f2cd6ba96bccdb19f07efedfdc1`  
		Last Modified: Tue, 04 Aug 2026 03:06:18 GMT  
		Size: 19.8 MB (19769990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8bfcd494e8b4c7f6b702cfb833554620c2ed9270c7f30de0bfb3223f31adc6`  
		Last Modified: Tue, 04 Aug 2026 03:06:17 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4f94055cdc5de994f66079829f980803347397c1c9de2ced2444fe3c93558c3`  
		Last Modified: Tue, 04 Aug 2026 03:06:17 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:2a56153ada23cd5101ac8623bb5c93ec070e276da9095a7d58a2fff7e28224b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4244976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb638605ee6eba42d3d456312301de27aad075a7835ddf9f66719ab6febe1e1b`

```dockerfile
```

-	Layers:
	-	`sha256:215855bd983c1833c6b9fd10e02bfb9447023fbc4e1dda3064367c69575166a2`  
		Last Modified: Tue, 04 Aug 2026 03:06:17 GMT  
		Size: 4.2 MB (4226595 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37dc07ceb73f8ac9c1fb103549cad234537441bb2968ea4cd524c332e57dc45e`  
		Last Modified: Tue, 04 Aug 2026 03:06:17 GMT  
		Size: 18.4 KB (18381 bytes)  
		MIME: application/vnd.in-toto+json
