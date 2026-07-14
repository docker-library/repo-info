## `clojure:temurin-26-lein-trixie-slim`

```console
$ docker pull clojure@sha256:d65c7644a66596825954425ae1717a34bb5d3490a8589bfd48d3cb1e0d6a5b9f
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

### `clojure:temurin-26-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:04337e3d7468ea4ef13e5b7c79efe82f4fa536e8e3bfcd93c44524c6cfd43a95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145576777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82f10a2d8b6867b46a482d67fefed98a9d2e1cee55e2af6fdcbd2809933b79df`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:23:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:23:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:23:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:23:28 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:23:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:23:28 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:24:39 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:24:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:24:39 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:24:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:24:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:24:41 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:24:41 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29278e6d2af94d7ae89da1286a48bea1cd4bb76c858313934138fba82faa6d66`  
		Last Modified: Tue, 14 Jul 2026 02:25:00 GMT  
		Size: 94.5 MB (94524312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b194d505bf9df189a4a56a5a7f224232ef456071186dd8357adf7b91b0de11f`  
		Last Modified: Tue, 14 Jul 2026 02:24:58 GMT  
		Size: 16.8 MB (16755920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbde6c4f9fbfc147235f3a11a2465c48ae89201bfc0408015596186a1f97db7c`  
		Last Modified: Tue, 14 Jul 2026 02:24:58 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ae19c42ed579f80a779312ce284b855349ccf72eff44619327abe4dc737caa0`  
		Last Modified: Tue, 14 Jul 2026 02:24:57 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cf8e3ec4a5d517764b3c0fd16fc688222af610683037dc1eb797e26ec9a3f183
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2349754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0b44f58d78492961b09a00ee2e274ce8491f41858dac57bb8e47af87518f7b0`

```dockerfile
```

-	Layers:
	-	`sha256:277c0b2bfb8b15dc5dabf95d314ef1d493cabfa2ee861e72ae2ca86415cb4a71`  
		Last Modified: Tue, 14 Jul 2026 02:24:57 GMT  
		Size: 2.3 MB (2332008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b656091e1738ec83f4e865ce4afef93b4d7b91f7ad7c7f4000dfc98ea8ffd70`  
		Last Modified: Tue, 14 Jul 2026 02:24:57 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c33b4521f8a9c3162fda70442fec4b7ecd26d839328d65e6378c516c72064b84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144885086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48b2d67403babb8f365258caa8fc254cce06f01c0a758846ebe1f0dc6df2fe23`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:30:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:30:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:30:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:30:42 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:30:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:30:43 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:32:00 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:32:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:32:00 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:32:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:32:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:32:02 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:32:02 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d520c1278ee00a69ac64795e375e32b66bcb424403b3539618389984e7105377`  
		Last Modified: Tue, 14 Jul 2026 02:32:21 GMT  
		Size: 93.5 MB (93504359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95ae1c3c075919ad701253201f83c2652df42ad2d18ebbb1e1d3f4958eae195d`  
		Last Modified: Tue, 14 Jul 2026 02:32:19 GMT  
		Size: 16.7 MB (16721376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c61f85255422e9885ea991fa69d8d128c14df25ff4456ced3cb54c015d9dea0`  
		Last Modified: Tue, 14 Jul 2026 02:32:19 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79b419c538c24c1c25f674e9d42ae397a58ea8f21b714ee8fd3c3958d46ba47`  
		Last Modified: Tue, 14 Jul 2026 02:32:18 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8a00f5d7b9c2188389f855e2f9a86ebe03b97356ca79bb3958da9191e165b5d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2349482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83d928f5ba98e528fd495ea82d36ee9b87f490be176ea905b27c11013a73ed2a`

```dockerfile
```

-	Layers:
	-	`sha256:97a3bf8f0ef7966cda8e012753ca39bafa22dd36a4bc48d4cda1ea76cc9002d1`  
		Last Modified: Tue, 14 Jul 2026 02:32:19 GMT  
		Size: 2.3 MB (2331615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83807196568db0b5c20115321d2b1ac243cb44bb0e3332f4704b506f601c1ce8`  
		Last Modified: Tue, 14 Jul 2026 02:32:18 GMT  
		Size: 17.9 KB (17867 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:6b69310f4d63c0c1d404656666a192d7edde002d2de4a21f779eeb2210a1bac4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148801723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb82cd2ece38295218bc9f0ec3a7200de693b67c597e78bc83bb935cfc1ddcc5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 09:01:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 09:01:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 09:01:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 09:01:30 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 09:01:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 09:01:30 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 09:04:07 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 09:04:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 09:04:07 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 09:04:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 09:04:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 09:04:11 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 09:04:11 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8980bca7ba9ac6bb4ad45365069910379b0e7d1266fcffe9e82862dedb1ece02`  
		Last Modified: Tue, 14 Jul 2026 09:04:43 GMT  
		Size: 93.9 MB (93902045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ce2564d7c9db2670d39be79d35f1e11401d2271b5a2b0f63ac5b3b115e6017c`  
		Last Modified: Tue, 14 Jul 2026 09:04:41 GMT  
		Size: 16.8 MB (16782563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6381950ff1bcc97bdf3824b89a30bf355665e32d8f4c02eb5c85fbf5d30b682f`  
		Last Modified: Tue, 14 Jul 2026 09:04:40 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a01a424952d9bacba54d6f3e7e25f77bc1e44d73d094ba4b3349ce3478c0a1`  
		Last Modified: Tue, 14 Jul 2026 09:04:40 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:37f4a51fa47d07271b529632264a4ba58a03bebb61ff5743b2fe61bf78aff380
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2334714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc22d0b70c4e7ca0fc7bc8e4d273bfbb4efa7a7e3a5e9fe5cd8dcd212dc89b98`

```dockerfile
```

-	Layers:
	-	`sha256:56724f36f734ae409d421312fd1242eee53679177dd36d6638d0a67281e5ce12`  
		Last Modified: Tue, 14 Jul 2026 09:04:40 GMT  
		Size: 2.3 MB (2316924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:596a78882f15062ef0ced7a6b3de09a55e07250098e70d261ce4b821dee11ab1`  
		Last Modified: Tue, 14 Jul 2026 09:04:40 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:de7b1410bd93aef8453e4712a2e6c8de0b65f7ff9e156f00eff007d2374288c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.7 MB (141678759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:131477c789631cd22a7178dc6aad447d2f8847c011a37e7cd7b43d6fac46222b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 04:36:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:36:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:36:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:36:53 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 04:36:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 04:36:53 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:38:05 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 04:38:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 04:38:05 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 04:38:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 04:38:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:38:06 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:38:06 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0e0367fc09b2b72246f6a85ad69cf03e92183d02592df26b25b3a9d33008196`  
		Last Modified: Tue, 14 Jul 2026 04:38:30 GMT  
		Size: 90.5 MB (90536934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65cc7f383d24dd038cc93a97854915cfebba74f790c921681377021479280bab`  
		Last Modified: Tue, 14 Jul 2026 04:38:29 GMT  
		Size: 16.8 MB (16779575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e62ff32cb9e7bd6b49c4d3acb42e6549c1672f1369d1f0b4c47a94553bd3a8b`  
		Last Modified: Tue, 14 Jul 2026 04:38:28 GMT  
		Size: 4.5 MB (4515188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:532fc304bf0b22ed56b3b42a9b97657ca26ce0b3950651106089afdcb655a302`  
		Last Modified: Tue, 14 Jul 2026 04:38:28 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:16ba9117532096f466cfaac486aaf5abbcef580a56d50aedba6396a654bc0842
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2331367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2496bf9deb318dcce0d50046b26ae6fe9318b7622aac990cd724060c1b64cb37`

```dockerfile
```

-	Layers:
	-	`sha256:caa017e228dc7fb09c8df00f5581285bd0cffa0ed63494561bd1ce150e4b61d5`  
		Last Modified: Tue, 14 Jul 2026 04:38:28 GMT  
		Size: 2.3 MB (2313621 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fc1335c4c72ce76b8438d637e867d5b043b03abf130cb059a834270b33cfa1b`  
		Last Modified: Tue, 14 Jul 2026 04:38:28 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json
