## `clojure:lein-2.13.0`

```console
$ docker pull clojure@sha256:2b4a96cf805c374d61e12eb2a999fb5361ae39fd94924dcc9e282e7f3f6ea94f
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

### `clojure:lein-2.13.0` - linux; amd64

```console
$ docker pull clojure@sha256:d555b1c5aedcadda0dea4b02793c0bb9322243236cf512bc7b3e6b0f9cacc6bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.7 MB (165711003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ec86acc381cdfc93f482ff27ae6f68254b533729889894bbdc11ebc2d0c16c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:47:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:47:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:47:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:47:35 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:47:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:47:35 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:48:38 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:48:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:48:38 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:48:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:48:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:48:40 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:48:40 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a234af0ba0f9422b5934b48b00aba06f29219c4e27e33829c867248a552ba7f`  
		Last Modified: Tue, 18 Aug 2026 20:48:59 GMT  
		Size: 92.6 MB (92574588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:825d00c7d84129c9988b9465c971c57888c62b4389f26a5f993871be3ce6af8f`  
		Last Modified: Tue, 18 Aug 2026 20:48:57 GMT  
		Size: 20.1 MB (20123672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a06dfb7d0bbeea41865bda39f001141874d180e01e246290622959228b5fd820`  
		Last Modified: Tue, 18 Aug 2026 20:48:56 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc4282bb0e080fd175fd1ef698272772e05f3b5f2d6823ed4e7d410b0537fbcc`  
		Last Modified: Tue, 18 Aug 2026 20:48:56 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:dc8f4e2c7fd6f046d4b9344f238bb4ad28955de37b29d3db621100e9c6df46f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4278178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:708ac6b3198b07c209fd93e5b3839fe949486a04d444b89cc9eef62f43b3f105`

```dockerfile
```

-	Layers:
	-	`sha256:545793356baa8854e1f542ba1a515c6d63dec42e4a7b7d1261c5dc3659a5dcf2`  
		Last Modified: Tue, 18 Aug 2026 20:48:56 GMT  
		Size: 4.3 MB (4258549 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17f061a7773cecd4bedd1cab8bb1bcc1acb4bc8843b5274f1b4f6af4cfa9f5d7`  
		Last Modified: Tue, 18 Aug 2026 20:48:56 GMT  
		Size: 19.6 KB (19629 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c6450dcf39b638dd0d25df60c81fd62d2496c0e5394d00d218b30e6686a6dd2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164397580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38e064442eb4fc74b0ce2418f92e9afa6bc8aa2d54d0787a3c20299e868c87f5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:40:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:40:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:40:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:40:03 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:40:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:40:03 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:41:13 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:41:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:41:13 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:41:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:47:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:47:39 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:47:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c68278a5ad8cab4205f3b55ee0d5537e304897cd625f83789f6a6d6cf0e88242`  
		Last Modified: Tue, 18 Aug 2026 20:41:51 GMT  
		Size: 91.5 MB (91542296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e946f2c577ea18c5d282e0a6b81e6c9532db4be95cab8667d64a99e649397c`  
		Last Modified: Tue, 18 Aug 2026 20:41:49 GMT  
		Size: 20.0 MB (19956262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8f9f5e41304ccc618c08faaff3f6ee2149029b8cbb9b98d47230dd85bdd392`  
		Last Modified: Tue, 18 Aug 2026 20:41:48 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e9b1d6d2783e4f7a1c5584d308c74fb84b590b63a28eadaf81a4b7b0b65cae`  
		Last Modified: Tue, 18 Aug 2026 20:47:50 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:ade4303bc15ff3af817d562b20bc196de73d3f56dd8e1023f6465662aec116f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4277102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5510943f4758ce56d872856a44ffd6badc7eed8847579c2e465bdbcb0d4fb8ea`

```dockerfile
```

-	Layers:
	-	`sha256:0cb64dc4a08d6de5d3a308dfecf55acccadae36cef079e40c6688cfdd30aaf5f`  
		Last Modified: Tue, 18 Aug 2026 20:47:50 GMT  
		Size: 4.3 MB (4258233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3a157dffa0740c0fa2dd03466097670724161a4aaac3c0cbda17eb6a29554a6`  
		Last Modified: Tue, 18 Aug 2026 20:47:50 GMT  
		Size: 18.9 KB (18869 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0` - linux; ppc64le

```console
$ docker pull clojure@sha256:b3e79fdd79f5d4334c461e11c0c5c0b4355b387f23fa06e4328009bba7f667f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169119492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4689801d726f4600c6a724f1e560967e9e546134bf6e99b1ffc5bc49d8d61eb4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 00:46:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 00:46:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 00:46:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 00:46:35 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 00:46:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 00:46:36 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 00:49:23 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 00:49:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 00:49:23 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 00:49:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 01:29:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:29:35 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:29:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:657805ed81c8838b19ae6cc208be44286fcb1fb1507004590b5867ffb623de4f`  
		Last Modified: Thu, 20 Aug 2026 00:50:38 GMT  
		Size: 91.9 MB (91914014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fd1550bb530a2d9cb6672be925b197bdbcfdab635b803cfd10fb30efffcd964`  
		Last Modified: Thu, 20 Aug 2026 00:50:35 GMT  
		Size: 20.3 MB (20348353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d66c2da4905f333da1199678fcf9d14be03dd9f5b269375e2cb34c1e791aaf27`  
		Last Modified: Thu, 20 Aug 2026 00:50:34 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7cecddd6e71a2634e5aabc6d0db4468897884f9436bbe31a0ec2946b02bdd50`  
		Last Modified: Thu, 20 Aug 2026 01:29:51 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:11cf37fc8e8efb27e0c82446d35577961f05a6860ef33e9b3d81ad448b1d3598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4263466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:197fa2153ed34fdbd82865e8faffd8adb6ccb6fe5dd20833632e8bde9b660788`

```dockerfile
```

-	Layers:
	-	`sha256:e6d0a0093f9e658bb42961d3051c4ab22228946b7d2dce80b6535a2080d6e1c3`  
		Last Modified: Thu, 20 Aug 2026 01:29:51 GMT  
		Size: 4.2 MB (4243758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69e038574aaf50115bbebe4de7efe058ea35ed5ea4112ca262901ed6f0d657e1`  
		Last Modified: Thu, 20 Aug 2026 01:29:51 GMT  
		Size: 19.7 KB (19708 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0` - linux; s390x

```console
$ docker pull clojure@sha256:7be80b48759c0838f2595b6c1aa0883294a2979966245c823dd1af7bc07abd03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.9 MB (159864033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f68c91dd269fc65cf10f87f9683a0436d2126586bc2b41488cec6232111ef86`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 03:01:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:01:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:01:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:01:28 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 03:01:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 03:01:28 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:02:42 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 03:02:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 03:02:42 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 03:02:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 03:02:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:02:44 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:02:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e56f29808cdae0b0ae79a057631e06d5ee2175c9d7e6333974220725c749743`  
		Last Modified: Tue, 04 Aug 2026 03:03:10 GMT  
		Size: 88.4 MB (88420384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f39a3285608a9349b625a1cc3cd6f71299b7255b9740554a1fd060330fb3a63`  
		Last Modified: Tue, 04 Aug 2026 03:03:09 GMT  
		Size: 19.8 MB (19770730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5419c95b19692e62ab878a44092cc0269598aa96e2b0968ba957ce39dd73e54f`  
		Last Modified: Tue, 04 Aug 2026 03:03:08 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1be4aa268e7f22315e0f83fc100b122584fd21b0966eee3b4a18f6e4247c7353`  
		Last Modified: Tue, 04 Aug 2026 03:03:08 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:6b44ea3e86a122339accfa33406dbbfb2020a7928d4d0ac5cf19eb8dacf6a4ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4249350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b50c48b04461c051fe17fbfd1b9ecc6ac7cacaff41eccea6b05e5626d884dfed`

```dockerfile
```

-	Layers:
	-	`sha256:e5cd3f38cbae66a83df4d69b27c5a4b0d2c782311a1ce39344da161de1160874`  
		Last Modified: Tue, 04 Aug 2026 03:03:08 GMT  
		Size: 4.2 MB (4229722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ad78c2a8f41493503932e97c8012ee5317b08de179f5f6ec209ecf08eda92ab`  
		Last Modified: Tue, 04 Aug 2026 03:03:08 GMT  
		Size: 19.6 KB (19628 bytes)  
		MIME: application/vnd.in-toto+json
