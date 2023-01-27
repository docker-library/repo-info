## `julia:rc-alpine3.16`

```console
$ docker pull julia@sha256:23e21b1c4b656000f1e3183e41b412f32dd9e2062d5615ca5406f8daef98fe5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `julia:rc-alpine3.16` - linux; amd64

```console
$ docker pull julia@sha256:dadd36bc9c85a97d07c52b617aeaf46ec7b2477771879f399891d81c692173eb
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.8 MB (151829694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d4203d0b49cdfca71b79abb1ef8d715e10b4bf480e91c5c77eed5d26dc0340a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["julia"]`

```dockerfile
# Sat, 12 Nov 2022 04:19:23 GMT
ADD file:ceeb6e8632fafc657116cbf3afbd522185a16963230b57881073dad22eb0e1a3 in / 
# Sat, 12 Nov 2022 04:19:23 GMT
CMD ["/bin/sh"]
# Sat, 12 Nov 2022 06:20:49 GMT
ENV JULIA_PATH=/usr/local/julia
# Sat, 12 Nov 2022 06:20:49 GMT
ENV PATH=/usr/local/julia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Nov 2022 06:20:49 GMT
ENV JULIA_GPG=3673DF529D9049477F76B37566E3C7DC03D6E495
# Fri, 20 Jan 2023 01:56:35 GMT
ENV JULIA_VERSION=1.9.0-beta3
# Fri, 20 Jan 2023 01:56:50 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		arch="$(apk --print-arch)"; 	case "$arch" in 		'x86_64') 			url='https://julialang-s3.julialang.org/bin/musl/x64/1.9/julia-1.9.0-beta3-musl-x86_64.tar.gz'; 			sha256='4b17b3804b9b2553b682781e63268bfc641db18ea07eb078a79b6fedfa9d6a5b'; 			;; 		*) 			echo >&2 "error: current architecture ($arch) does not have a corresponding Julia binary release"; 			exit 1; 			;; 	esac; 		wget -O julia.tar.gz.asc "$url.asc"; 	wget -O julia.tar.gz "$url"; 		echo "$sha256 *julia.tar.gz" | sha256sum -w -c -; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$JULIA_GPG"; 	gpg --batch --verify julia.tar.gz.asc julia.tar.gz; 	command -v gpgconf > /dev/null && gpgconf --kill all; 	rm -rf "$GNUPGHOME" julia.tar.gz.asc; 		mkdir "$JULIA_PATH"; 	tar -xzf julia.tar.gz -C "$JULIA_PATH" --strip-components 1; 	rm julia.tar.gz; 		apk del --no-network .fetch-deps; 		julia --version
# Fri, 20 Jan 2023 01:56:51 GMT
COPY file:92a2f9b3b9de38e57462f85dbe804b0eae9fea8a95aa9bfe9d3c2b95000ae42c in /usr/local/bin/ 
# Fri, 20 Jan 2023 01:56:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Jan 2023 01:56:51 GMT
CMD ["julia"]
```

-	Layers:
	-	`sha256:ca7dd9ec2225f2385955c43b2379305acd51543c28cf1d4e94522b3d94cce3ce`  
		Last Modified: Sat, 12 Nov 2022 02:52:15 GMT  
		Size: 2.8 MB (2806272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc1766916533dd1cd325cc43780338e6c96d04f1d62483e13ba81218f6de9c6a`  
		Last Modified: Fri, 20 Jan 2023 02:00:55 GMT  
		Size: 149.0 MB (149023050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d1c23aca429bd2c826c8af41554bcbc6d8f1a3fad0fbd8c8ac3d3edebc62ed`  
		Last Modified: Fri, 20 Jan 2023 02:00:31 GMT  
		Size: 372.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
