## `clojure:temurin-25-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:ae15e660078c0d7945e2b1a410d99abf94dcf194eb11f181bed64fbc499c75d9
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

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:302f7cc8b34f991f994f4c2ebb08d30ba0563ebabbf2eaf3ab24742c15500ef4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.6 MB (143625419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e8d727e91b998d5c8e090f76242d3156d0347f5dd1b53686789a7b04cde064`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:46:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 00:46:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 00:46:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:46:36 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 00:46:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:24:01 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:25:14 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:25:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:25:14 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:25:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:25:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:25:15 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:25:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05bcf1732ab86b09ee483da0a444b5b3fcc23e6fa29e5e5806ded84dd2691683`  
		Last Modified: Wed, 05 Aug 2026 00:47:32 GMT  
		Size: 92.6 MB (92574564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb4169e97c64f0c71be0d6a5d8a85306ead2ee3f16efe0edd16f5125a96501d8`  
		Last Modified: Wed, 05 Aug 2026 01:25:25 GMT  
		Size: 16.8 MB (16754484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1643ea5737802066a0196d73d3104f8cf64f3a72cbc338e85516ccbb7c9edde9`  
		Last Modified: Wed, 05 Aug 2026 01:25:25 GMT  
		Size: 4.5 MB (4515177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee0ee759d91014dc4ce778b60d772ff164be18877749c65db6a82023a6396820`  
		Last Modified: Wed, 05 Aug 2026 01:25:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:aa12a7f4851db7242daa1ab62a49f742c9611b5bd7c6f6740382d1c444a0fe7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2352612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18af230b082a1237eed2fefccd8abfc7070d583c009014ae1de677f4d0ae6d2f`

```dockerfile
```

-	Layers:
	-	`sha256:30a441c2d2db1dfe9f10d6fee1f3e9bb0ef555d6613d56b9c80e5ac0efbd5a80`  
		Last Modified: Wed, 05 Aug 2026 01:25:24 GMT  
		Size: 2.3 MB (2335165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f5fc7f3a8fb6e7c8b93cc024d09d0748237a2936b43f503e20f95bc1e32e65c`  
		Last Modified: Wed, 05 Aug 2026 01:25:24 GMT  
		Size: 17.4 KB (17447 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:28a1e051b892cb43ebd5b1e81c897b90762b5aafefb5ade544fe726810b52f57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142913179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:825bd3f5968e99b992aa3bb7f3e1eaaea1cf8020b96b6b1de74b596d45ee5d02`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:29:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:29:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:29:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:29:59 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:29:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:29:59 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:31:13 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:31:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:31:13 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:31:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:31:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:31:14 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:31:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c1098e237a18c03d58653e4ab6c2d0fc151e2e87ccf0f13fa38101d52a1898`  
		Last Modified: Wed, 05 Aug 2026 01:31:33 GMT  
		Size: 91.5 MB (91542246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93119c5d0cf2a2379fe412728512771ce179db211899ca06db5b61efda7e391c`  
		Last Modified: Wed, 05 Aug 2026 01:31:31 GMT  
		Size: 16.7 MB (16711714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5238a84afbded0501bf9e056d67152698d1cb226e3acb5e00f899972aaf02af8`  
		Last Modified: Wed, 05 Aug 2026 01:31:31 GMT  
		Size: 4.5 MB (4515183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66aeb809de7466e3194d61c37f4418801753bb3771acce27d505179fed3716f5`  
		Last Modified: Wed, 05 Aug 2026 01:31:30 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7f451a63699e4a1f5bee33e57f1ba9cf6879a5642362167517d5858abab2f396
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2353341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450f7bad407ba01f70ed1b0b705ead6c0f03d944ab8e9bdb1c79c0f3ec2e8186`

```dockerfile
```

-	Layers:
	-	`sha256:448a8b588504ee286bd35fe3c0d5de426300e5be8badb1a0e9a50cf31279dbed`  
		Last Modified: Wed, 05 Aug 2026 01:31:30 GMT  
		Size: 2.3 MB (2334796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bff8394e12573b522b64eb6966b3cb3a50f9849cc80d53b2dc8d866da7a0a90`  
		Last Modified: Wed, 05 Aug 2026 01:31:30 GMT  
		Size: 18.5 KB (18545 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:7f8af327f119aaec55d8bde6bbcea7d531f4e39557d4b7681538f786884c4ae6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146813607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ac267abb5341659e829e817a45c21c859e38e4a70ff07b17acbb20558dc828c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:53:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:53:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:53:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:53:26 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 07:53:26 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 07:53:27 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 07:56:10 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 07:56:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 07:56:10 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 07:56:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 07:56:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 07:56:15 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 07:56:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e94c393a1c84f084a056f22331c9dd69fe2dbe694e46871ba350a33ea590f377`  
		Last Modified: Wed, 05 Aug 2026 07:56:47 GMT  
		Size: 91.9 MB (91914040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e13ff2f3c476055e4eb5ff42d680303eda6dd5dc533f01eb23e8f610b743620f`  
		Last Modified: Wed, 05 Aug 2026 07:56:45 GMT  
		Size: 16.8 MB (16782613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89793b7ac59bd6b7ddb6e804bd268a0a7aafaaf10313ad8b7179bcf783fa00e7`  
		Last Modified: Wed, 05 Aug 2026 07:56:45 GMT  
		Size: 4.5 MB (4515181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b8a4cb79af62a3d910529e1307ea5721fb27dc65024c847b2d50e7e01e5d0d1`  
		Last Modified: Wed, 05 Aug 2026 07:56:45 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:da30d20b7ff96bc3aab6d13c1ccdc52022dd78f5113107e4e497f2c682d1b3da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2337925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90ef0d3ccf975e81ad62fd116f241f816a2e4ef42a89f349cf25e78e81eefbf`

```dockerfile
```

-	Layers:
	-	`sha256:df79da725ec14a22836d627f2d80e3889c38edf3bc2cf80f7216fc8fcf189ea1`  
		Last Modified: Wed, 05 Aug 2026 07:56:45 GMT  
		Size: 2.3 MB (2319469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9a622e911d525e8c4c63609bf09cf5655d825953ef711497f16876e4bf51ff8`  
		Last Modified: Wed, 05 Aug 2026 07:56:45 GMT  
		Size: 18.5 KB (18456 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:f5c4b0ead38b3fe7596972ceee1b279022c667e48f5e89521d88f235f2ac4415
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.6 MB (139562871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79c06033847be13a9414a028a41ad06bfc0d3bb655c235a419e435577b357a3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:49:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:49:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:49:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:49:57 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:49:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:49:57 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:51:13 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:51:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:51:13 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:51:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:51:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:51:15 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:51:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4a26308b6284566882e1fa837313dbcc3c61f5aa6d3bdde066bf0edb0d69ed6`  
		Last Modified: Wed, 05 Aug 2026 01:51:40 GMT  
		Size: 88.4 MB (88420357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac5a8c5581970509706fa937d2ca4ca6776576240c13974e21f7abf53d10e24`  
		Last Modified: Wed, 05 Aug 2026 01:51:38 GMT  
		Size: 16.8 MB (16780307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28ab8ff62e691dac150cb68f1d4162b2bae100a46d9acf95410a15c0daf2909`  
		Last Modified: Wed, 05 Aug 2026 01:51:38 GMT  
		Size: 4.5 MB (4515205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a33a4969501e84a85c83e378c1d45a67b06834014343d0fe9c6a3b787f17354`  
		Last Modified: Wed, 05 Aug 2026 01:51:38 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2a4112ef6cfdfaa37fcac6c4f163a8f2d8292c4402da4b9b7abba917958285ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2334554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:263b520d4d5d9bfb352f46ed33be193df33f9ef016bee8870fef88605c0f7fe7`

```dockerfile
```

-	Layers:
	-	`sha256:e50fe519874289bdd61be327ce4c232db8f016c411664c07afc7e54e774db28f`  
		Last Modified: Wed, 05 Aug 2026 01:51:38 GMT  
		Size: 2.3 MB (2316154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7389e5158b922650bd9d37b36a6d08c74985b3f9c854fc5108329fb68f47cea1`  
		Last Modified: Wed, 05 Aug 2026 01:51:38 GMT  
		Size: 18.4 KB (18400 bytes)  
		MIME: application/vnd.in-toto+json
