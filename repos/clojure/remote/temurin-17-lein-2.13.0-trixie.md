## `clojure:temurin-17-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:1f34412b1e9ded9eae862c48fccf8f41d69237b613a2432f05d5a9082dbfab2c
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

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:d7f38fec81180bf90c7c940a6108c5d7495710ec464d99914535fffde21a6fdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218615595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:687fddee932bda95c02e26f167d417ef23c685520942a6c3a255401e576f5957`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:31:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:31:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:31:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:31:56 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:31:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:31:56 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:33:11 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:33:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:33:11 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:33:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:33:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:33:12 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:33:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dde66fb5beea74b8d9e3eaf836688b4a385810c3d10278f846bee0fda0ea1cb`  
		Last Modified: Thu, 16 Jul 2026 01:33:32 GMT  
		Size: 145.9 MB (145906317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b697fa47d97dfa6cb3bd029d09da9a17c229d842a29af261438a03a36a287cdf`  
		Last Modified: Thu, 16 Jul 2026 01:33:30 GMT  
		Size: 18.9 MB (18881080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbb4bc8dfbc71155c99df3212c424192b4efab00464fc9bb8abcb1431b3c0983`  
		Last Modified: Thu, 16 Jul 2026 01:33:29 GMT  
		Size: 4.5 MB (4515197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1512acfa13170cf7bf6290000d5b68d3dbd92a539848f873eaa26a7f77f1bb43`  
		Last Modified: Thu, 16 Jul 2026 01:33:29 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:95d91cb8529765c5dbb8028fa9e59aa3ceb11fc169f6d73fd4e7397c0ae6e55e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3835574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f650134d6f1ec41c457411ebe434f206a68e3e700e4dce20cfcff4c1ef3aafb`

```dockerfile
```

-	Layers:
	-	`sha256:1e9fd8eb0cbbcb395668a1f652eaabc7af99b1618e977bba465e1429bcdafe8d`  
		Last Modified: Thu, 16 Jul 2026 01:33:29 GMT  
		Size: 3.8 MB (3817856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c63faab6bc1aefd3579fc13d46e5bbf2be66b0961b91710668cb5fdb33b4fe6`  
		Last Modified: Thu, 16 Jul 2026 01:33:28 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f486f6db1cbb716e45855e9fd57c740b4877b44865f31501d73f850c1ed110bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217766174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cab6da83266777276b82a816fb71d0de02ab4c85710316fb1bc41b2ce9982a6e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:25:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:25:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:25:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:25:39 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:25:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:25:39 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:27:00 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:27:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:27:00 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:27:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:27:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:27:02 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:27:02 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b836b30c3c9b0d7ce2c67038a61fdba17ae88a1555637e3624cdbb4d56e2c538`  
		Last Modified: Thu, 16 Jul 2026 01:27:22 GMT  
		Size: 144.7 MB (144724326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aa35b9d5dced6752271465a50b9ba0ec6757dfb42b30da5054c1c11965052be`  
		Last Modified: Thu, 16 Jul 2026 01:27:19 GMT  
		Size: 18.9 MB (18852010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe72eeb65443829914d321f1909f14fa6f36cc36ab765001f62ec21e32db8488`  
		Last Modified: Thu, 16 Jul 2026 01:27:19 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da51374d978a3d14103450d5316bbd70e6b687ee58fcfd777c42b71e62d1cb02`  
		Last Modified: Thu, 16 Jul 2026 01:27:18 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:62202aa9dba0b282dc336ed9c1a7d67f36a8785bb52f9c7f92e3ed2706031806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3835935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fd4fc361a6e27017ee36f766dd32934611d031fede8f13df71f75d04ec87952`

```dockerfile
```

-	Layers:
	-	`sha256:3294c6a1f9b3f5cc09a8f7d5c9243a5feb8f7a4c6101d27b0ad8344a60fe424d`  
		Last Modified: Thu, 16 Jul 2026 01:27:19 GMT  
		Size: 3.8 MB (3818096 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eadd5912b38965f7b9391db881140cfbccbf0f1ed6bba94de7ed986f03dbb746`  
		Last Modified: Thu, 16 Jul 2026 01:27:18 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:45e7743b507d8d8664549e8fb0778e7adbb25df21989832cd7d3d06bebe81e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.4 MB (222352148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe4a47d02553fbab65ba76ae2fb024f83d06addeb4eb6f1ac11cb92910dfd604`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 02:41:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:41:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:41:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:41:39 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 02:41:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 02:41:40 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 02:44:24 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 02:44:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 02:44:24 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 02:44:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 02:44:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 02:44:28 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 02:44:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7c238e024816cf59f7bcc40d6137f687e77402d51ca7aa991f5a3d83a53bafb`  
		Last Modified: Thu, 16 Jul 2026 02:44:59 GMT  
		Size: 145.8 MB (145766144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f374cb89b3f5868d6e67ffd61c05d7364ced72967ef5214d385cf90fc0017631`  
		Last Modified: Thu, 16 Jul 2026 02:45:02 GMT  
		Size: 18.9 MB (18936384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7b934bd9b926637ef3bc3b03d1c7dbdddd487bf952c97fca5d84bc7cfb1943a`  
		Last Modified: Thu, 16 Jul 2026 02:45:01 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edc5a9c7b0e4515260fdc66a128836eae0fca5ea726280ea37a0031e9c5e7fae`  
		Last Modified: Thu, 16 Jul 2026 02:45:01 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:0803596b9b6344839e2b1edb7b6faf891d82393c90c3fbc9136e3fe37b0e52c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3836618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0a32f6ba105ab624fb1bb8789ce5b1b9e1cdbb0077008d65b660a406355590d`

```dockerfile
```

-	Layers:
	-	`sha256:94d651be828758cd39660a67d55ad23de21a03afeff3dc0a0c460b984481b7ae`  
		Last Modified: Thu, 16 Jul 2026 02:45:01 GMT  
		Size: 3.8 MB (3818856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d04182e8ddb8b1eac5a78fe26f438247dc463ffa5de8bbe5aaa6d73032ca0e8d`  
		Last Modified: Thu, 16 Jul 2026 02:45:01 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:984d9d35857e8ab3efa4009545d0f067862ee9158de3e46b16a983a61fbc3005
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208730055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93c9a94617a662db7c3556c7cffa724905ee3caa69bafb4455b0caf4146a0837`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:46:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:46:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:46:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:46:32 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:46:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:46:32 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:47:51 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:47:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:47:51 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:47:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:47:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:47:53 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:47:53 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f5d067e4e8e716cdf84f9dbc77687cfc89912d19cf4416c0173e85413bf26c`  
		Last Modified: Thu, 16 Jul 2026 01:48:20 GMT  
		Size: 135.9 MB (135910472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:705faff4a5d2eef6774751cae95f0752f1ef95e10c2eef3cca421df12461cdf5`  
		Last Modified: Thu, 16 Jul 2026 01:48:18 GMT  
		Size: 18.9 MB (18922225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5540830e8922b65b32bb06de7748a702862c079c503cc1616909da395859657a`  
		Last Modified: Thu, 16 Jul 2026 01:48:17 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50dc1d03ae33ea11a2d91815e83509c4d00f9142c6bc5354063e333bb543fb2b`  
		Last Modified: Thu, 16 Jul 2026 01:48:17 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b481f5590becf1a653ea143de9d9346364401dddb3526e9295dffbe8cbdb25a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3832001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05df79264308734ca2ebcfa87518f2559ae7d0c28b56aec0eeeb2eee1dc37c60`

```dockerfile
```

-	Layers:
	-	`sha256:abcddfbab20202e912d64f381ded6887725efbdca84243479d37b4da1c893f0e`  
		Last Modified: Thu, 16 Jul 2026 01:48:17 GMT  
		Size: 3.8 MB (3814283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eea1ef143e097e30f4406bf02e76cfc794334f391839d93628196b45a7719d36`  
		Last Modified: Thu, 16 Jul 2026 01:48:17 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json
