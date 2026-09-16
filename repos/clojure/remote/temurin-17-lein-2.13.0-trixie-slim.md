## `clojure:temurin-17-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:c95f95c04901d4bc08617180d0eee4b5f45cdbda05a041fc999eeb5d96a1d912
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:47f77426a2a7f073a446c99f0ef9fdc5d0147fb2a0bf32dcc7989fdf6ab1d7b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.2 MB (202234545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58925d14e4124b0df75f495f0d01b535c796952b7ca3356706064e9f9b4d8f23`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:34:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:34:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:34:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:34:11 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:34:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:34:11 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:35:26 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:35:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:35:26 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:35:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:35:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:35:28 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:35:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b94345012e3a3cbf2e521412d28eec4f076cf0098677899178f9342177eec5`  
		Last Modified: Wed, 16 Sep 2026 04:34:45 GMT  
		Size: 145.8 MB (145822696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b8ce3bb4d713c22f77448b6ad5acfa765026fe993ac2f4b838ed15010468bd2`  
		Last Modified: Wed, 16 Sep 2026 04:35:45 GMT  
		Size: 22.1 MB (22103574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40096c3a08220443511f77661b0551fb5696e2986d659105b99343be3ad49b6f`  
		Last Modified: Wed, 16 Sep 2026 04:35:45 GMT  
		Size: 4.5 MB (4515187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab54ea45b056313acb7e49439b2c4a356e8844bd11d0db24456986ec3f73d9c`  
		Last Modified: Wed, 16 Sep 2026 04:35:45 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cb32fdc73ee8f44ba128517c3ab78659cb5a1461ddd7cbd85b8874d570298dc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2385102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36640d55b6be7cb1c01900411a1ea4434979bf1a8ef2b826275fdad5489b36bc`

```dockerfile
```

-	Layers:
	-	`sha256:0ab25cf5ac4508b6d3e28a0ac2587b4f7ab0bcf761a7eda2039038ff6010b6bb`  
		Last Modified: Wed, 16 Sep 2026 04:35:45 GMT  
		Size: 2.4 MB (2367349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb59477bf4f33918ae2bb93fb3e1598e029d08aacfc36ef7b05985ff47a2be7e`  
		Last Modified: Wed, 16 Sep 2026 04:35:44 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c0e93866e1055ed8366061055c9e3850e98d0a38d231213582380dbe999880bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.7 MB (201700761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06eb19b56db5bb503ece3b916983ac26dbcc550fd5e74f9cb583842f82f89d56`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:34:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:34:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:34:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:34:28 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:34:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:34:28 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:36:20 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:36:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:36:20 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:36:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:36:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:36:22 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:36:22 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d959b7aba36376c0eb11deaa03d754d83286875b6bcab0fac7a8970344aa41c`  
		Last Modified: Wed, 16 Sep 2026 04:36:43 GMT  
		Size: 144.6 MB (144647465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c0ca03365ffc2e859b15afa3cfad0069be16fd18a669b482a3a5b225b5d51cf`  
		Last Modified: Wed, 16 Sep 2026 04:36:41 GMT  
		Size: 22.4 MB (22378098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec6406397ab4c3c7666ff86477c3a0845876a0904ecb22033e37c6e7bdecb40`  
		Last Modified: Wed, 16 Sep 2026 04:36:40 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a88697f949f4145ee5f4d86b7bbc47f018e9312f9e49a911875217150013a58`  
		Last Modified: Wed, 16 Sep 2026 04:36:40 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4fd58ee7813891630d6160555f647054745dca54da7152439631299d5382a876
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e15b43a269048a7615a778cc305ddd48351c4bf5df1dad3bfb7fc9e384b7149d`

```dockerfile
```

-	Layers:
	-	`sha256:2cb0ce8071f8d44660cb19d33ca952f165a8e2a3a2c4d8318f8c1dded0f3e86d`  
		Last Modified: Wed, 16 Sep 2026 04:36:40 GMT  
		Size: 2.4 MB (2366959 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bab18fdbbb454d98f3b8ebecfd75430dc4477ce1dca1460fccb0a983a07196c`  
		Last Modified: Wed, 16 Sep 2026 04:36:39 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:aa60781ced8bd1efab219a8b93e748b6ff33d94b0036bf07fe48f9535080bc7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.3 MB (206334402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72565d8601a063eae7f59823c17a20b817592e8baf4ff4070bb28b14089c6ef6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 10:43:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:43:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:43:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:43:53 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 10:43:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 10:43:53 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 10:47:28 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 10:47:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 10:47:28 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 10:47:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 10:47:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 10:47:31 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 10:47:31 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43f64ae923a17a4d37ebd2765cf1cceab85262a12d43b090b263771493ac70f9`  
		Last Modified: Wed, 16 Sep 2026 10:48:06 GMT  
		Size: 145.7 MB (145674282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62cbbf7e2fdc6df41fc3fb29d6668e2b5fd514874733b15706047113b840dc54`  
		Last Modified: Wed, 16 Sep 2026 10:48:03 GMT  
		Size: 22.5 MB (22529035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c204c72a40aafc3cbae088be37fb23d6efdfecf2ed46e5a1e7b9421352b373`  
		Last Modified: Wed, 16 Sep 2026 10:48:03 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a8e57aefc70f15e7c27ad5d6bb958d4a782c08b710b54720ce422e7f3ea0943`  
		Last Modified: Wed, 16 Sep 2026 10:48:02 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2203e0911b038c10b828194edbff7d1a1fec9bcecf9b59b9ad99956f578ef020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2386125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81aa1007d2a4adc3d5b232eade5f932736520ad55bace5bf04d48263e445bff6`

```dockerfile
```

-	Layers:
	-	`sha256:d4baae20d6e29d44f052e53a056131d4a0c2b422fee80ed2ed76593859ccedcb`  
		Last Modified: Wed, 16 Sep 2026 10:48:02 GMT  
		Size: 2.4 MB (2368329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c78d2654a8419912f583cfac20c542f904ce44199b107a76ab3588cee0039b24`  
		Last Modified: Wed, 16 Sep 2026 10:48:02 GMT  
		Size: 17.8 KB (17796 bytes)  
		MIME: application/vnd.in-toto+json
